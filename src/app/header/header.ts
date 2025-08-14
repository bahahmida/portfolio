import { Component } from '@angular/core';
import { RouterLink, RouterModule, RouterOutlet } from '@angular/router';


@Component({
  selector: 'app-header',
  imports: [RouterModule,RouterLink],
  templateUrl: './header.html',
  styleUrl: './header.css'
})
export class Header {

}
