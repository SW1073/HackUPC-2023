import { Component } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { TopBarComponent } from '../top-bar/top-bar.component';

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

    goBack() {
        this.router.navigate(['/home']);
    }
    constructor(
        private apiService: ApiService,
        private router: Router,
        private http: HttpClient,
    ) {}
}
