import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { OnInit } from '@angular/core';



@Component({
  selector: 'app-individual-trivia',
  templateUrl: './individual-trivia.component.html',
  styleUrls: ['./individual-trivia.component.css']
})
export class IndividualTriviaComponent implements OnInit {
    question = 'What is the capital city of France?';
    image = 'https://cdn.pixabay.com/photo/2018/10/05/09/21/eiffel-tower-3722505_960_720.jpg';
    options = ['Paris', 'Madrid', 'London', 'Berlin'];

    constructor(private http: HttpClient) { }

    ngOnInit() {
        this.http.get('localhost:3000/random-question').subscribe(data => {
            console.log(data);

        });
    }


}
