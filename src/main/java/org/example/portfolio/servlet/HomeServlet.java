package org.example.portfolio.servlet;



import org.example.portfolio.models.PortfolioData;
import org.example.portfolio.models.Project;
import org.example.portfolio.models.Skill;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class HomeServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Récupérer les données
        List<Project> projects = PortfolioData.getAllProjects();
        List<Skill> skills = PortfolioData.getAllSkills();
        List<Project> latestProjects = PortfolioData.getLatestProjects();

        // Envoyer à la JSP
        request.setAttribute("projects", projects);
        request.setAttribute("skills", skills);
        request.setAttribute("latestProjects", latestProjects);
        request.setAttribute("projectCount", projects.size());

        // Rediriger vers home.jsp
        request.getRequestDispatcher("/WEB-INF/jsp/home.jsp").forward(request, response);
    }
}