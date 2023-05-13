import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginPageComponent } from './components/login-page/login-page.component';
import { RankingPageComponent } from './components/ranking-page/ranking-page.component';
import { IndividualTriviaComponent } from './components/individual-trivia/individual-trivia.component';
import { Router } from '@angular/router';
import { OnInit } from '@angular/core';


const routes: Routes = [
    {path: 'login', component: LoginPageComponent},
    {path: 'ranking', component: RankingPageComponent},
    {path: 'individual-trivia', component: IndividualTriviaComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule implements OnInit{
    constructor(private router: Router) { }

    ngOnInit() {
        this.router.navigate(['/login']);
    }

}
