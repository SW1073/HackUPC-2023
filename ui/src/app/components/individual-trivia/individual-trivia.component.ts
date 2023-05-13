import { Component } from '@angular/core';
import { ApiService } from '../../services/api.service';

@Component({
  selector: 'app-individual-trivia',
  templateUrl: './individual-trivia.component.html',
  styleUrls: ['./individual-trivia.component.css']
})
export class IndividualTriviaComponent {
    question = 'What is the capital city of France?';
    image = 'https://cdn.pixabay.com/photo/2018/10/05/09/21/eiffel-tower-3722505_960_720.jpg';
    options = ['Paris', 'Madrid', 'London', 'Berlin'];

    ngOnInit() {}
}
