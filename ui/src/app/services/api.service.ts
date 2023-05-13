import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(private http: HttpClient) { }

  getRanking() : Observable<any[]> {
    return this.http.get<any[]>(`${environment.apiUrl}/ranking`);
  }

  createUser(id: string) : Observable<any> {
    return this.http.post<any>(`${environment.apiUrl}/save-user/`, {username: id});
  }

  getUser(id: string) : Observable<any> {
    return this.http.get<any>(`${environment.apiUrl}/get-user/${id}`);
  }

}
