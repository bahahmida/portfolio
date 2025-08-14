import { CommonModule } from '@angular/common';
import { Directive } from '@angular/compiler';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';


@Component({
  selector: 'app-about-me',
  standalone: true,
  imports: [FormsModule,CommonModule],
  templateUrl: './about-me.html',
  styleUrl: './about-me.css'
})
export class AboutMe {
  name="baha";
  cars=["toyota","mercedes","bmw"]

  test=true;

  change(){
    this.name="dina"
  }

}
