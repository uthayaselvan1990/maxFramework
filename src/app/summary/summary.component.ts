import { Component, OnInit } from "@angular/core";
import { ChartDataSets, ChartType, ChartOptions } from "chart.js";
import { Label } from "ng2-charts";

@Component({
  selector: "app-summary",
  templateUrl: "./summary.component.html",
  styleUrls: ["./summary.component.css"]
})
export class SummaryComponent implements OnInit {
  constructor() {}

  ngOnInit() {}
  public radarChartOptions: ChartOptions = {
    responsive: true
  };
  public radarChartLabels: Label[] = [
    "App Architecture",
    "User Interacton",
    "App Capabilites",
    "Visual Design",
    "Icons & Images",
    "Usability"
  ];

  public radarChartData: ChartDataSets[] = [
    { data: [1.73, 1.73, 1.33, 1.88, 1.9, 1.76], label: "Result" }
  ];
  public radarChartType: ChartType = "radar";

  // events
  public chartClicked({
    event,
    active
  }: {
    event: MouseEvent;
    active: {}[];
  }): void {
    console.log(event, active);
  }

  public chartHovered({
    event,
    active
  }: {
    event: MouseEvent;
    active: {}[];
  }): void {
    console.log(event, active);
  }
}
