import { Component, OnInit } from '@angular/core';
import { ApkDataService } from '../service/apk-data.service';
import { KeyValuePipe } from '@angular/common';

@Component({
  selector: 'app-report',
  templateUrl: './report.component.html',
  styleUrls: ['./plugins/fontawesome-free/css/all.min.css', './plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css',
  './plugins/icheck-bootstrap/icheck-bootstrap.min.css', './plugins/jqvmap/jqvmap.min.css', './dist/css/adminlte.min.css', './plugins/overlayScrollbars/css/OverlayScrollbars.min.css', './plugins/daterangepicker/daterangepicker.css', './plugins/summernote/summernote-bs4.min.css']
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