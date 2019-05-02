import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";

import { HomeComponent } from "./home/home.component";
import { QuestionsComponent } from "./questions/questions.component";
import { EvaluationComponent } from "./evaluation/evaluation.component";
import { ReportComponent } from "./report/report.component";
import { EvaluateComponent } from "./evaluate/evaluate.component";
import { SummaryComponent } from "./summary/summary.component";

const routes: Routes = [
  { path: "", component: HomeComponent },
  { path: "question/:catId", component: QuestionsComponent },
  { path: "evaluation", component: EvaluationComponent },
  { path: "report", component: ReportComponent },
  { path: "evaluate", component: EvaluateComponent },
  { path: "summary", component: SummaryComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
