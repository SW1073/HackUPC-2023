import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { HttpClientModule } from '@angular/common/http';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';

import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import { MatSliderModule } from '@angular/material/slider';
import { LoginPageComponent } from './components/login-page/login-page.component';

import { MatFormFieldModule } from '@angular/material/form-field';
import { FormsModule } from '@angular/forms';
import { MatInputModule } from '@angular/material/input';
import { IndividualTriviaComponent } from './components/individual-trivia/individual-trivia.component';

import {MatGridListModule} from '@angular/material/grid-list';


const materialModules = [
  MatButtonModule,
  MatCardModule,
  MatDatepickerModule,
  MatNativeDateModule,
  MatSliderModule,
  MatFormFieldModule,
  MatInputModule,
  MatGridListModule,
];

@NgModule({
  declarations: [
    AppComponent,
    LoginPageComponent,
    IndividualTriviaComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    NoopAnimationsModule,
    materialModules,
    FormsModule,
    MatGridListModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
