import { Component, OnInit } from "@angular/core";
import { Router } from "@angular/router";

import { applicationService } from "../services/application.services";
import { Global } from "../services/global";
import { forEach } from "@angular/router/src/utils/collection";

@Component({
  selector: "app-evaluate",
  templateUrl: "./evaluate.component.html",
  styleUrls: ["./evaluate.component.css"]
})
export class EvaluateComponent implements OnInit {
  catArray;

  constructor(
    private application: applicationService,
    private router: Router,
    private globals: Global
  ) {}

  ngOnInit() {
    this.application.getCategory().subscribe(data => {
      this.catArray = data;
    });
  }
  updateStatus(id, status) {
    if (status == 1) {
      this.globals.eventStatus = 1;
    } else {
      this.globals.eventStatus = 0;
    }

    this.catArray.forEach(category => {
      if (category.categoryId == id) {
        category.status = 2;
      }
    });
    this.application.updateAppStatus(id).subscribe(data => {
      this.router.navigateByUrl("/question/" + id);
    });
  }
}
