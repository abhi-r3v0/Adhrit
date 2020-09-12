import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ApkPentestComponent } from './apk-pentest/apk-pentest.component';
import { ReportComponent } from './report/report.component';
import { ErrorComponent } from './error/error.component';

const routes: Routes = [
  {path:'',component:ApkPentestComponent},
  {path:'report',component:ReportComponent},
  {path:'**',component:ErrorComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
