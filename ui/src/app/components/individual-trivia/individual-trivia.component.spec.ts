import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IndividualTriviaComponent } from './individual-trivia.component';

describe('IndividualTriviaComponent', () => {
  let component: IndividualTriviaComponent;
  let fixture: ComponentFixture<IndividualTriviaComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [IndividualTriviaComponent]
    });
    fixture = TestBed.createComponent(IndividualTriviaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
