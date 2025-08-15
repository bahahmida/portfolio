import { Component, HostListener } from '@angular/core';
import { RouterLink, RouterModule, RouterOutlet } from '@angular/router';


@Component({
  selector: 'app-header',
  imports: [RouterModule,RouterLink],
  templateUrl: './header.html',
  styleUrl: './header.css'
})
export class Header {
    isCollapsed = true;
  isScrolled = false;

  toggleMenu() {
    this.isCollapsed = !this.isCollapsed;
  }

  @HostListener('window:scroll')
  onWindowScroll() {
    this.isScrolled = window.scrollY > 10;
  }

}
