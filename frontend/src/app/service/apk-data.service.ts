import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';



@Injectable({
  providedIn: 'root'
})
export class ApkDataService {

  public scannedData;

  constructor(
    private http:HttpClient
  ) { }

  postFile(fileToUpload: File){
    console.log(fileToUpload.name)
    const formData: FormData = new FormData();
    formData.append('file', fileToUpload, fileToUpload.name);
    return this.http.post('http://127.0.0.1:5000/scan', formData)
    
}

  getReport(){
    return this.http.get(`http://127.0.0.1:5000/testbed`)
  }
}
