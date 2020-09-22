import { Component, OnInit } from '@angular/core';
import { ApkDataService } from '../service/apk-data.service';
import { KeyValuePipe } from '@angular/common';

@Component({
  selector: 'app-report',
  templateUrl: './report.component.html',
  styleUrls: ['./report.component.css']
})
export class ReportComponent implements OnInit {

  
  constructor(private apkDataService:ApkDataService) { }
  res:any
  test:any
  reportmanifest:any
  reportbytecode:any
  reportsecrets:any
  scanType="";
  ngOnInit(): void {
    this.res=this.apkDataService.scannedData;
    console.log(this.res)
    console.log(this.res.scan_id)
    this.getManifestData()
   // console.log(this.res[0])
  
/*   this.test = Object.keys(this.res).map(key => ({type: key, value: this.res[key]}))
  console.log(this.test);
  console.log(this.test[0]) */
  
  
  }
  
     getManifestData(){
       this.reportbytecode = null;
       this.reportsecrets = null;
       this.scanType="manifest";
      this.apkDataService.getReportData(this.res.scan_id,this.scanType).subscribe(data => {
        this.reportmanifest=data;
        console.log(data)
        console.log("Manifest Scan:"+data)
      });
  } 
  getBytecodeData(){
    this.reportmanifest = null;
    this.reportbytecode = null;
    this.reportsecrets = null;
    this.scanType="bytecode";
   this.apkDataService.getReportData(this.res.scan_id,this.scanType).subscribe(data => {
     this.reportbytecode=data;
     console.log(data)
     console.log("bytecode Scan:"+data)
   });
}

getSecretData(){
    this.reportmanifest = null;
    this.reportbytecode = null;
    this.reportsecrets = null;
  this.scanType="secrets";
 this.apkDataService.getReportData(this.res.scan_id,this.scanType).subscribe(data => {
   this.reportsecrets=data;
   console.log(data)
   console.log("Manifest Scan:"+data)
 });
} 
}