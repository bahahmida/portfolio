import { Component, signal } from '@angular/core';


import { Header } from './header/header';
import { RouterModule, RouterOutlet } from '@angular/router';
import { Footer } from './footer/footer';
import { BrowserModule } from '@angular/platform-browser';




@Component({
  selector: 'app-root',
  standalone: true,
  imports: [ Header,RouterModule,RouterOutlet,Footer],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class App {
  
  protected readonly title = signal('portfolio');
}
