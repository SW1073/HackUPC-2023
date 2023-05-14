import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { OnInit } from '@angular/core';
import { FormGroup, FormControl, FormBuilder, Validators} from '@angular/forms';

@Component({
  selector: 'app-individual-trivia',
  templateUrl: './individual-trivia.component.html',
  styleUrls: ['./individual-trivia.component.css']
})
export class IndividualTriviaComponent implements OnInit {
    question = 'What is the capital city of France?';
    image = 'https://cdn.pixabay.com/photo/2018/10/05/09/21/eiffel-tower-3722505_960_720.jpg';
    options = ['Paris', 'Madrid', 'London', 'Berlin'];

    public formAnswers: FormGroup;
    public randomQuestion: any;

    totalQuestions = 5;

    constructor(
        private http: HttpClient,
        private fb: FormBuilder,
        private questionsAnswered: number,
        private score: number,
    ) { 
        this.formAnswers = this.fb.group({
            selectedAnswer: ['', Validators.required],
        });

        this.randomQuestion = ["nice"];
        this.questionsAnswered = 0;
        this.score = 0;
    }

    ngOnInit() {
        this.nextQuestion();
    }

    submitAnswer() {
        // console.log(this.randomQuestion);
        let answer = this.formAnswers.value.selectedAnswer;
        let correctAnswer = this.randomQuestion[0].answer;

        console.log(answer);

        if (answer == correctAnswer) {
            alert('Correct!');
            this.score += 100;
        } else {
            alert("youre trash");
            if (this.score > 100) this.score -= 100;
        }

            this.nextQuestion();
    }

    nextQuestion() {
        ++this.questionsAnswered;

        if (this.questionsAnswered == this.totalQuestions) {
            alert("You've finished the quiz! Your score is " + this.score + "!");
            this.http.post('http://localhost:3000/api/save-individual-game/', this.score);
            return;
        }

        this.http.get('http://localhost:3000/api/random-question').subscribe(data => {
            this.randomQuestion = data;
            // console.log(this.randomQuestion);
        });
    }

    getAnswer(questionId: number) {
        this.http.post('http://localhost:3000/api/get-question-answer/', questionId).subscribe(data => {
            console.log(data);
        });
    }
}
