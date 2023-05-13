import { Component } from '@angular/core';
import { HttpClient} from '@angular/common/http';

@Component({
    selector: 'app-root',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.css']
})
export class AppComponent {
    title = 'ui';

    constructor(private http: HttpClient) { }

    saveUser(event: Event) {
        event.preventDefault();
        console.log('front-end saving user');

        const data = {name: "John", email: "john@doe.com"};

        this.http.post('http://localhost:3000/api/save-user', data).subscribe(response => {
            console.log(response);
        });

    }

}
