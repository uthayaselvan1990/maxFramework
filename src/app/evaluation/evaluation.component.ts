import { Component, OnInit } from "@angular/core";
import { Router } from "@angular/router";
import { forEach } from "@angular/router/src/utils/collection";

import { applicationService } from "../services/application.services";
import { Global } from "../services/global";

@Component({
  selector: "app-evaluation",
  templateUrl: "./evaluation.component.html",
  styleUrls: ["./evaluation.component.css"]
})
export class EvaluationComponent implements OnInit {
  constructor(
    private router: Router,
    private globals: Global,
    private application: applicationService
  ) {}
  qusArray;
  poor: number = 0;
  good: number = 0;
  far: number = 0;
  poorAvg: number = 0;
  goodAvg: number = 0;
  farAvg: number = 0;
  reviewPoint: number;
  totalQus: number = 0;
  chunkValue: number = 4;
  ngOnInit() {
    //this.qusArray = JSON.parse(localStorage.getItem("application"));

    this.application.getResult(this.globals.currentApp).subscribe(data => {
      this.qusArray = this.chunks(data, this.chunkValue);

      this.qusArray.forEach(mainCat => {
        mainCat.forEach(subCat => {
          if (subCat.rating == 3) {
            this.good++;
          } else if (subCat.rating == 2) {
            this.far++;
          } else if (subCat.rating == 1) {
            this.poor++;
          }
          this.totalQus++;
        });
      });
      this.reviewPoint =
        (this.poor * 3 + this.far * 2 + this.good) / this.totalQus;

      this.poorAvg = (this.poor * 100) / this.totalQus;
      this.farAvg = (this.far * 100) / this.totalQus;
      this.goodAvg = (this.good * 100) / this.totalQus;
    });
  }
  chunks(array, size) {
    let results = [];
    results = [];
    while (array.length) {
      results.push(array.splice(0, size));
    }
    return results;
  }
  reEvaluate() {
    this.router.navigateByUrl("/question/" + this.globals.currentApp);
  }
  report() {
    this.router.navigateByUrl("/report");
  }
}
