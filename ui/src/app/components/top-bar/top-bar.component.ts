import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { OnInit } from '@angular/core';


@Component({
  selector: 'top-bar',
  templateUrl: './top-bar.component.html',
  styleUrls: ['./top-bar.component.css']
})
export class TopBarComponent implements OnInit {
    userName?: string;
    userPoints?: number = 1000;

    city? = localStorage.getItem('city') ?? 'Barcelona';

    constructor(private http: HttpClient) {}

    ngOnInit() {
            this.userName = localStorage.getItem('username') ?? 'User123';
            this.http.get('http://localhost:3000/api/user/' + this.userName).subscribe((data: any) => {
                console.log(data);
                this.userPoints = data[0].points;
            });
    }

    

    


}
