import { Routes } from '@angular/router';
import { Home } from './home/home';
import { AboutMe } from './about-me/about-me';
import { Projects } from './projects/projects';

export const routes: Routes = [
    {path: 'home',component:Home},
    {path: 'about_me',component:AboutMe},
    { path: '', redirectTo: '/about_me', pathMatch: 'full' },
    {path:'projects',component:Projects}
];
