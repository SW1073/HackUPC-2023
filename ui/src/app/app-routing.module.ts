import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginPageComponent } from './components/login-page/login-page.component';
import { RankingPageComponent } from './components/ranking-page/ranking-page.component';
import { IndividualTriviaComponent } from './components/individual-trivia/individual-trivia.component';


const routes: Routes = [
    {path: '', redirectTo: '/login', pathMatch: 'full'},
    {path: 'login', component: LoginPageComponent},
    {path: 'ranking', component: RankingPageComponent},
    {path: 'individual-trivia', component: IndividualTriviaComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
