import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-home-page',
  templateUrl: './home-page.component.html',
  styleUrls: ['./home-page.component.css']
})
export class HomePageComponent {

  constructor(private router: Router,
              private http: HttpClient) { }

  routeToIndividualTrivia() {
    this.router.navigate(['/individual-trivia']);
  }

  routeToRanking() {
    this.router.navigate(['/ranking']);
  }

}
