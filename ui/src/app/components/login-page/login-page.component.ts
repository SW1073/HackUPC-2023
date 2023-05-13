import { Component } from '@angular/core';
import { HttpClient} from '@angular/common/http';

@Component({
  selector: 'login-page',
  templateUrl: './login-page.component.html',
  styleUrls: ['./login-page.component.css']
})
export class LoginPageComponent {

  username?: string;

  login(event: any) {
    // Add your login logic here
    event.preventDefault();
    console.log(event);
  }


  title = 'Welcome to Vueling!';

  constructor(private http: HttpClient) { }

  saveUser(event: Event) {
      event.preventDefault();
      console.log('front-end saving user');

      const data = {name: "John", email: "john@doe.com"};

      this.http.post('http://localhost:3000/api/save-user', data).subscribe(response => {
          console.log(response);
      });
  }

  createUser(event: any) {
      event.preventDefault();
      console.log('front-end creating user');
      // console.log(event);

      let value = event.target[0].value;
      let data = {username: value};

      console.log(data);

      // this.http.post('http://localhost:3000/api/save-user', data).subscribe(response => {
      //     console.log(response);
      // });
  }
}
