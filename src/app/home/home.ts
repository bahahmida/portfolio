import { Component } from '@angular/core';
import { RouterLink, RouterModule, RouterOutlet } from '@angular/router';





@Component({
  selector: 'app-home',
  imports: [RouterLink,RouterModule],
  templateUrl: './home.html',
  styleUrl: './home.css'
})
export class Home {
  imageurl="/src/assets/IMG_20250621_195428_606 (1) (1).jpg";

}
