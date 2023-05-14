import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-home-page',
  templateUrl: './home-page.component.html',
  styleUrls: ['./home-page.component.css']
})
export class HomePageComponent implements OnInit {

  userName?: string;
  userPoints?: number = 1000;

  constructor(private router: Router,
              private http: HttpClient) { }

  ngOnInit(): void {
    this.userName = localStorage.getItem('userName') ?? 'User123';
    this.http.get('http://localhost:3000/users/' + this.userName).subscribe((data: any) => {
      this.userPoints = data.points;
    });
  }

  routeToIndividualTrivia() {
    this.router.navigate(['/individual-trivia']);
  }

  routeToRanking() {
    this.router.navigate(['/ranking']);
  }

}
