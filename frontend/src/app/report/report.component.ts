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
  ngOnInit(): void {
    this.res=this.apkDataService.scannedData;
    console.log(this.res)
    console.log(this.res[0])
  
/*   this.test = Object.keys(this.res).map(key => ({type: key, value: this.res[key]}))
  console.log(this.test);
  console.log(this.test[0]) */
  
  
  }
  
  
  
  
}