import { Component } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import { ApiService } from 'src/app/services/api.service';
import { Router } from '@angular/router';
import { OnInit } from '@angular/core';

@Component({
  selector: 'login-page',
  templateUrl: './login-page.component.html',
  styleUrls: ['./login-page.component.css']
})
export class LoginPageComponent implements OnInit {

    title = 'Welcome to Vueling!';

    city: any;

    constructor(private http: HttpClient,
                private apiService: ApiService,
                private router: Router) {}

    ngOnInit() {
        if (localStorage.getItem('username') !== null) {
            console.log('user is logged in');
            this.router.navigate(['/home']);
        }

        if (localStorage.getItem('city') !== null) {
            console.log('user has selected a city');
            this.router.navigate(['/home']);
        }
    }

    createUser(event: any) {
        event.preventDefault();
        let value = event.target[0].value;
        let data = {username: value};

        console.log('front-end creating user: ' + value);

        localStorage.setItem('username', value);

        this.http.get('http://localhost:3000/api/random-city').subscribe(data => {
            console.log(data);
            this.city = data;
            localStorage.setItem('city', this.city[0].name);
        });

        this.http.post('http://localhost:3000/api/save-user', data).subscribe(response => {
            this.router.navigate(['/home']);
            console.log(response);
        });

    }
}
