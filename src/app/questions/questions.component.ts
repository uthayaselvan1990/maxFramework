import { Component, OnInit } from "@angular/core";
import { NgbRatingConfig } from "@ng-bootstrap/ng-bootstrap";
import { Router, ActivatedRoute } from "@angular/router";

import { applicationService } from "../services/application.services";
import { Global } from "../services/global";
@Component({
  selector: "app-questions",
  templateUrl: "./questions.component.html",
  styleUrls: ["./questions.component.css"]
})
export class QuestionsComponent implements OnInit {
  chunkValue: number = 4;
  currentTab: number = 0;
  catId: number;
  qusArray;
  localArray;
  tempArray;
  constructor(
    config: NgbRatingConfig,
    private application: applicationService,
    private router: Router,
    private route: ActivatedRoute,
    private globals: Global
  ) {
    config.max = 3;
    config.readonly = false;
  }

  ngOnInit() {
    this.route.params.subscribe(params => {
      this.catId = +params["catId"];
      //console.log(this.catId);
      this.globals.currentApp = this.catId;
    });
    if (this.globals.eventStatus == 0) {
      this.tempArray = JSON.parse(localStorage.getItem("application"));
      if (Array.isArray(this.tempArray) && this.tempArray.length) {
        this.qusArray = this.tempArray;
      } else {
        this.application.getResult(this.catId).subscribe(data => {
          this.qusArray = this.chunks(data, this.chunkValue);
        });
      }
    } else {
      this.application.getApplication(this.catId).subscribe(data => {
        this.qusArray = this.chunks(data, this.chunkValue);
        //  console.log(this.qusArray);
      });
    }
  }

  chunks(array, size) {
    let results = [];
    results = [];
    while (array.length) {
      results.push(array.splice(0, size));
    }
    return results;
  }
  changeTab(id) {
    if (id >= this.qusArray.length) {
      let element: HTMLElement = document.getElementById(
        "calculate"
      ) as HTMLElement;
      setTimeout(function() {
        element.click();
      }, 1000);
    } else {
      this.currentTab = id;
      let element: HTMLElement = document.getElementsByClassName(
        "tab_" + id
      )[0] as HTMLElement;
      element.click();
    }
  }
  setCurrentTab(id) {
    this.currentTab = id;
  }
  calculate() {
    localStorage.setItem("application", JSON.stringify(this.qusArray));
    this.application.updateApplicatiopn().subscribe(data => {
      if (data.status) {
        this.router.navigateByUrl("/evaluation");
      }
    });
  }
}
