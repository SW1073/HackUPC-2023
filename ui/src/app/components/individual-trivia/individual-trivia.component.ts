import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { OnInit } from '@angular/core';
import { FormGroup, FormControl, FormBuilder, Validators} from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-individual-trivia',
  templateUrl: './individual-trivia.component.html',
  styleUrls: ['./individual-trivia.component.css']
})
export class IndividualTriviaComponent implements OnInit {
    question = 'What is the capital city of France?';
    options = ['Paris', 'Madrid', 'London', 'Berlin'];

    public formAnswers: FormGroup;
    public randomQuestion: any;

    totalQuestions = 5;
    questionsAnswered = 0;
    score = 0;
    image = "../../../assets/random/0.jpg";

    constructor(
        private http: HttpClient,
        private fb: FormBuilder,
        private router: Router
    ) { 
        this.formAnswers = this.fb.group({
            selectedAnswer: ['', Validators.required],
        });

        this.randomQuestion = ["nice"];
    }

    ngOnInit() {
        this.nextQuestion();
    }

    submitAnswer() {
        // console.log(this.randomQuestion);
        let answer = this.formAnswers.value.selectedAnswer;
        let correctAnswer = this.randomQuestion[0];

        let data = {id: this.randomQuestion[0].id};

        this.http.post('http://localhost:3000/api/get-question-answer/', data).subscribe(data => {
            correctAnswer = data;
            console.log(correctAnswer[0].answer);
            if (answer == correctAnswer[0].answer) {
                alert('Correct!');
                this.score += 100;
            } else {
                alert("Incorrect!");
                if (this.score > 100) this.score -= 100;
            }
        });

        this.nextQuestion();
    }

    nextQuestion() {
        this.checkMaxQuestionsAnswered();

        let data = {city: localStorage.getItem('city')};

        console.log("city: " + data.city);

        this.http.post('http://localhost:3000/api/random-question-city', data).subscribe(data => {
            this.randomQuestion = data;
            console.log(this.randomQuestion);
        });

        let rand = Math.floor(Math.random() * 8);
        console.log("../../assets/random/");
        this.image = "../../../assets/random/" + rand.toString() + ".jpg";
        console.log(this.image);
    }

    checkMaxQuestionsAnswered() {
        if (this.questionsAnswered == this.totalQuestions) {
            alert("You've finished the quiz! Your score is " + this.score + "!");
            let data = {username: localStorage.getItem('username'), score: this.score};
            this.http.post('http://localhost:3000/api/save-individual-game/', data).subscribe(data => {
                console.log(data);
            });
            this.router.navigate(['/home']);
            return;
        }

        ++this.questionsAnswered;
    }

}
