import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginPageComponent } from './components/login-page/login-page.component';
import { RankingPageComponent } from './components/ranking-page/ranking-page.component';


const routes: Routes = [
  {path: 'login', component: LoginPageComponent},
  {path: 'ranking', component: RankingPageComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
