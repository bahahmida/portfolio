import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

interface Project {
  id: number;
  name: string;
  description: string;
  imageUrl: string;
  githubUrl: string;
  videoUrl?: string;
}

@Component({
  imports:[FormsModule,CommonModule],
  selector: 'app-projects',
  templateUrl: './projects.html',
  styleUrl: './projects.css'
})
export class Projects {
  projects: Project[] = [
    {
      id: 1,
      name: 'driving school management system',
      description: 'A comprehensive JavaFX application designed to streamline operations for driving schools. This system centralizes candidate management (registrations, document storage, payments), coordinates code/road sessions with GPS-enabled scheduling, tracks vehicle maintenance, and delivers analytical dashboards for performance monitoring.',
      imageUrl: 'images/projet1.png',
      githubUrl: 'https://github.com/bahahmida/gestion-auto-ecole',
      videoUrl: 'https://youtu.be/xG-zFR3bVnE?si=Z8VQ1FlgCq0UBg2K'
    }
  ];

  openGithub(url: string): void {
    window.open(url, '_blank');
  }

  openVideo(url: string | undefined): void {
    if (url) {
      window.open(url, '_blank');
    } else {
      alert('Aucune démo vidéo disponible pour ce projet');
    }
  }
}