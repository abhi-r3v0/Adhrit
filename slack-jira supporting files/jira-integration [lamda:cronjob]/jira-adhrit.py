import os
import yaml
import json
import requests
import traceback
import re



class Jira():
    def __init__(self):
        self.path = os.path.dirname(os.path.abspath(__file__))
        with open(self.path + "/config.yaml", "r") as ymlfile:
            self.config = yaml.load(ymlfile, Loader=yaml.FullLoader)
        self.headers = {'Content-Type': 'application/json', 'Authorization': 'Basic ' + self.config['JIRA']['token']}
        

    def is_commented(self, ticket_id):
        req = requests.get(self.config['JIRA']['url'] + f"/rest/api/2/issue/{ticket_id}/comment", headers=self.headers)
        if self.config['JIRA']['title'] in req.text or 'This is good to go from appsec side' in req.text:
            return True
        return False
    
    def notify_slack(self, msg):
        data = {'text': msg}
        req = requests.post(self.config['slack']['url'], data=json.dumps(data))

    def get_tickets(self):
        JQL = "project={}&status not in (Risk, Done, Resolved)".format(self.config['JIRA']['project'])
        params = {'maxResults': '100', 'jql': JQL}
        req = requests.get(self.config['JIRA']['url'] + "/rest/api/2/search", params=params, headers=self.headers)
        results = json.loads(req.text)
        for result in results['issues']:
            self.ticket_id = result['key']
            if not self.is_commented(result['key']) and self.config['JIRA']['keyword']  in result['fields']['summary'].lower() and result['fields']['description']:
                apk_detail = str(result['fields']['description']).split("App Details")[1].split(" ")[2].splitlines()[0]
                self.app_link = re.findall("https?://[a-z/./A-Z/0-9-]*.apk", apk_detail)[0]
                self.ticket_id = result['id']
                return self.app_link
        return ''


    def init_Adhrit(self, app_link):
        file_name = app_link.split('/')[-2]
        slack_token = self.config['JIRA']['slack_token']
        headr = {'Content-Type': 'application/x-www-form-urlencoded', 'Authorization': f'Bearer {slack_token}'}
        file_url = f"https://slack.com/api/files.info?file={file_name}"
        r = requests.get(file_url, headers=headr)
        response = r.json()
        url = response['file']['url_private_download']
        pload = {'url':f'{url}'}
        ip = self.config['JIRA']['adhrit_ip']
        r = requests.post(f"{ip}/jirascan", data = pload)
        response = r.json()
        if 'complete' in response['download_status']:
            hash_apk= response['hash_key']
            ip = self.config['JIRA']['adhrit_ip']
            r = requests.get(f'{ip}/jirareport/{hash_apk}')
            response = r.json()
            return response
        
        else:
            self.notify_slack(self, 'Scanning was not completed')
            return {}

        
    def cookcomment(self, json_response):
        self.message = "h2. Adhrit - Android Security Suite Report" + "\n\n"
        self.message += "h3. Manifest Analysis\n\n"

        for key,val in json_response['manifest'].items():
            if not "Implicit Intents" in key:
                self.message += f"*> {key}*\n"
                if "Application Information" in key:
                    self.message += "{noformat}\n"
                    for i in val:
                        self.message += f"{i}\n"
                    self.message +="{noformat}\n"
                else:
                    self.message += "{noformat}\n"
                    for i in val[1:]:
                        self.message += f"{i}\n"
                    self.message +="{noformat}\n"
        
        self.message += "\n\nh3. Hardcoded Secrets\n\n"
        for key,val in json_response['secrets'].items():
            self.message += f"*> {key}*\n"
            self.message += "{noformat}\n"
            for i in val[1:]:
                self.message += f"{i}\n"
            self.message +="{noformat}\n"

    def post_comment(self, ticketId):
        comment = json.dumps({'body': self.message})
        req = requests.post(self.config['JIRA']['url'] + "/rest/api/2/issue/%s/comment" % ticketId, headers=self.headers, data=comment)
        print(req.status_code)

        

if __name__ == '__main__':
    try:
        jira = Jira()
        app_link = jira.get_tickets()
        if app_link:
            json_response = jira.init_Adhrit(app_link)
            jira.cookcomment(json_response)
            jira.post_comment(jira.ticket_id)
    except Exception as e:
        jira = Jira()
        msg = "An Exception has been Caught on Jira-Adhrit Integration: \n```" + str(traceback.format_exc()) + "```"
        print(msg)
        pass
