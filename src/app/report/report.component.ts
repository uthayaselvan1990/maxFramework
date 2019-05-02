import { Component, OnInit } from "@angular/core";
import { NgbRatingConfig } from "@ng-bootstrap/ng-bootstrap";

import { applicationService } from "../services/application.services";
import { Global } from "../services/global";

@Component({
  selector: "app-report",
  templateUrl: "./report.component.html",
  styleUrls: ["./report.component.css"]
})
export class ReportComponent implements OnInit {
  constructor(
    config: NgbRatingConfig,
    private application: applicationService,
    private globals: Global
  ) {
    config.max = 3;
    config.readonly = true;
  }
  qusArray;

  ngOnInit() {
    console.log("global ->" + this.globals.currentApp);

    this.application.getResult(this.globals.currentApp).subscribe(data => {
      this.qusArray = data;
      console.log(this.qusArray);
    });
  }
  print(): void {
    let printContents, popupWin;
    printContents = document.getElementById("print-section").innerHTML;
    popupWin = window.open("", "_blank", "top=0,left=0,height=100%,width=auto");
    popupWin.document.open();
    popupWin.document.write(`
      <html>
        <head>
          <title>Evaluation Report</title>   
          <style>
          .main-content {
            background: #ffffff;
            margin-top: 20px;
            box-shadow: 0 0.125rem 0.25rem #434343 !important;
            text-align: center;
            color: #c3c3c3;
            padding: 15px 0px;
            margin-bottom: 20px;
          }
          .main-blk {
            margin: 0px 50px;
          }
          .icon {
            width: 100%;
            text-align: right;
          }
          .icon img {
            padding: 0px 20px;
          }
          h3 {
            color: #000000;
            margin-top: 30px;
          }
          .cnt-blk {
          }
          .cnt-blk h3 {
            text-align: left;
          }
          .cnt-blk h2 {
            font-weight: bold;
            color: #000000;
            font-size: 20px;
            text-align: left;
            margin-top: 20px;
          }
          .list-group {
            margin-top: 50px;
          }
          .list-group-item {
            border: none;
          }
          .list-group-item p {
            float: left;
            font-size: 21px;
            text-align: left;
            color: #000000;
            width: 70%;
          }
          
          .list-group-item .rate {
            float: right;
          }
          .right {
            float: right;
          }
          .star {
            font-size: 30px;
            color: #c3c3c3;
            padding: 5px;
          }
          .filled {
            color: #face57;
          }
          .bad {
            color: #c3c3c3;
          }
          .filled.bad {
            color: #face57;
          }
          .round-status {
            background: #69beb1;
            width: 150px;
            height: 150px;
            border-radius: 50%;
            position: relative;
            margin: 0 auto;
            margin-top: 50px;
          }
          .round-status h3 {
            position: absolute;
            top: 30%;
            left: 25%;
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
            text-align: center;
            color: #ffffff !important;
            font-size: 30px;
            font-weight: bold;
          }
          .row-content {
            min-height: 200px;
          }
          .row-content h3 {
            margin-bottom: unset;
            color: #000000;
            float: left;
            margin-right: 10px;
            width: 25%;
          }
          .row-content p {
            margin-top: 10px;
          }
          .list-group-item {
            border: none;
            text-align: left;
            margin: 0;
            padding: 0;
          }
          .list-group-item h3 {
            margin-top: 0px;
          }
          .summary {
            text-align: left;
            color: #000000;
            font-size: 20px;
            line-height: 2;
          }
          </style>      
        </head>
    <body onload="window.print();window.close()">${printContents}</body>
      </html>`);
    popupWin.document.close();
  }
}
