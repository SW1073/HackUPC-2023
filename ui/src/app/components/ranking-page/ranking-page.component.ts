import { Component } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-ranking-page',
  templateUrl: './ranking-page.component.html',
  styleUrls: ['./ranking-page.component.css']
})
export class RankingPageComponent implements OnInit {
    
    ranking: any[] = []; 

    ngOnInit() {
        this.http.get('http://localhost:3000/api/ranking').subscribe(response => {
            this.ranking = response as any[];
            console.log(response);
        });
    }
    constructor(
        private apiService: ApiService,
        private http: HttpClient,
    ) {}
}
