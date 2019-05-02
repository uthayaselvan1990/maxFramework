import { Injectable } from "@angular/core";
import { HttpClient, HttpParams } from "@angular/common/http";
import { Observable } from "rxjs";

import { Application } from "./product";

@Injectable({
  providedIn: "root"
})
export class applicationService {
  qusArray;
  constructor(private http: HttpClient) {}
  // get Application data
  getApplication(id) {
    let params = new HttpParams();
    params = params.append("getQuestion", "1");
    params = params.append("questionId", id);

    return this.http.get<Application[]>(
      "http://localhost/Server/question.php",
      { params: params }
    );
  }
  getCategory() {
    let params = new HttpParams();
    params = params.append("getCategory", "1");
    return this.http.get<Application[]>(
      "http://localhost/Server/question.php",
      { params: params }
    );
  }
  updateApplicatiopn() {
    this.qusArray = JSON.parse(localStorage.getItem("application"));

    let params = new HttpParams().set(
      "updatedData",
      JSON.stringify(this.qusArray)
    );
    localStorage.removeItem("application");
    return this.http.get<Application[]>(
      "http://localhost/Server/question.php",
      { params: params }
    );
  }
  updateAppStatus(id) {
    let params = new HttpParams();
    params = params.append("updateCategory", "1");
    params = params.append("categoryId", id);

    return this.http.get<Application[]>(
      "http://localhost/Server/question.php",
      { params: params }
    );
  }

  getResult(id) {
    let params = new HttpParams();
    params = params.append("getResult", "1");
    params = params.append("categoryId", id);

    return this.http.get<Application[]>(
      "http://localhost/Server/question.php",
      { params: params }
    );
  }
}
