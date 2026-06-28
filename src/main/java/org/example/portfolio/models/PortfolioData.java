package org.example.portfolio.models;

import org.example.portfolio.models.Project;
import org.example.portfolio.models.Skill;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


public class PortfolioData implements Serializable {

    private static final long serialVersionUID = 1L;

    private static List<Project> projects = new ArrayList<>();
    private static List<Skill> skills = new ArrayList<>();
    private static Long nextProjectId = 1L;
    private static Long nextSkillId = 1L;

    static {
        initializeProjects();
        initializeSkills();
    }

    private static void initializeProjects() {

        // Projet 1 : Sarcasm Detection in Tweets
        Project p1 = new Project(
                "Sarcasm Detection in Tweets",
                "Fine-tuning RoBERTa and exploring 5 ML models (XGBoost, RF, LR, SVC, KNN). Tweet preprocessing and hyperparameter optimization using GridSearchCV.",
                "https://github.com/bahahmida/sarcasm_detection"
        );
        p1.setId(nextProjectId++);
        p1.setTechnologies("Python, Machine Learning, RoBERTa, XGBoost, Scikit-learn, GridSearchCV");
        p1.setCategory("Machine Learning");
        projects.add(p1);

        // Projet 2 : Vehicle Classification - SVM & CNN
        Project p2 = new Project(
                "Vehicle Classification - SVM & CNN",
                "Multi-class classifier for 6 vehicle categories (cars, motorcycles, airplanes, etc.). SVM+HOG: 77.2% accuracy vs CNN+augmentation: 82.5% accuracy.",
                "https://github.com/bahahmida/Vehicle-Classification"
        );
        p2.setId(nextProjectId++);
        p2.setTechnologies("Python, TensorFlow, Scikit-learn, SVM, CNN, HOG");
        p2.setCategory("Machine Learning");
        projects.add(p2);

        // Projet 3 : Driving School Management System
        Project p3 = new Project(
                "Driving School Management System",
                "Complete desktop application for managing candidates, instructors, vehicles, and finances. Features: lesson scheduling, exam tracking, JavaFX graphical interface.",
                "https://github.com/bahahmida/gestion-auto-ecole"
        );
        p3.setId(nextProjectId++);
        p3.setTechnologies("Java, JavaFX, SQL, JavaScript");
        p3.setCategory("Desktop Application");
        projects.add(p3);

        // Projet 4 : Pet Shop E-commerce Application
        Project p4 = new Project(
                "Pet Shop E-commerce Application",
                "Online pet sales platform with authentication, interactive catalog, shopping cart. Admin interface for complete site management using MVC architecture with JSTL.",
                "https://github.com/bahahmida/petShop"
        );
        p4.setId(nextProjectId++);
        p4.setTechnologies("Java, JSP, Servlets, HTML, CSS, JSTL, MVC");
        p4.setCategory("Web Application");
        projects.add(p4);

        // ============================================================
        // PROJET 5 : Orientini - Selenium Automated Test Suite (NOUVEAU)
        // ============================================================
        Project p5 = new Project(
                "Orientini - Selenium Automated Test Suite",
                "Automated test suite for Orientini.com (Tunisian educational orientation portal). 38 test cases implemented with Python, Selenium WebDriver, and unittest framework. 28 passed, 73.68% success rate. Detected 10 critical bugs.",
                "https://github.com/bahahmida/orientini-selenium-tests"
        );
        p5.setId(nextProjectId++);
        p5.setTechnologies("Python, Selenium WebDriver, unittest");
        p5.setCategory("Testing & QA");
        projects.add(p5);
    }

    private static void initializeSkills() {

        // Programming Languages
        Skill languages = new Skill("Programming Languages");
        languages.setId(nextSkillId++);
        languages.addSkill("Java");
        languages.addSkill("Python");
        languages.addSkill("C");
        languages.addSkill("C++");
        languages.addSkill("JavaScript");
        languages.addSkill("PHP");
        languages.addSkill("Go");
        skills.add(languages);

        // Web & Frameworks
        Skill web = new Skill("Web & Frameworks");
        web.setId(nextSkillId++);
        web.addSkill("HTML");
        web.addSkill("CSS");
        web.addSkill("Angular");
        web.addSkill("JavaScript");
        web.addSkill("Bootstrap");
        web.addSkill("Java JEE");
        skills.add(web);

        // Web Services
        Skill webServices = new Skill("Web Services");
        webServices.setId(nextSkillId++);
        webServices.addSkill("REST APIs");
        webServices.addSkill("SOAP");
        webServices.addSkill("API Integration");
        skills.add(webServices);

        // Machine Learning & AI
        Skill ml = new Skill("Machine Learning & AI");
        ml.setId(nextSkillId++);
        ml.addSkill("Supervised Learning");
        ml.addSkill("Unsupervised Learning");
        ml.addSkill("Clustering");
        ml.addSkill("Classification");
        ml.addSkill("Scikit-learn");
        ml.addSkill("NumPy");
        ml.addSkill("Pandas");
        skills.add(ml);

        // Data Analysis & Visualization
        Skill data = new Skill("Data Analysis & Visualization");
        data.setId(nextSkillId++);
        data.addSkill("Data Preprocessing");
        data.addSkill("Matplotlib");
        data.addSkill("Data Visualization");
        skills.add(data);

        // Databases
        Skill db = new Skill("Databases");
        db.setId(nextSkillId++);
        db.addSkill("MySQL");
        db.addSkill("PL/SQL");
        skills.add(db);

        // Networking
        Skill networking = new Skill("Networking");
        networking.setId(nextSkillId++);
        networking.addSkill("Cisco Packet Tracer");
        networking.addSkill("CCNA1");
        networking.addSkill("CCNA2");
        skills.add(networking);

        // Testing & QA (mis à jour avec Selenium)
        Skill testing = new Skill("Testing & QA");
        testing.setId(nextSkillId++);
        testing.addSkill("Unit Testing");
        testing.addSkill("Pytest");
        testing.addSkill("Selenium WebDriver");
        testing.addSkill("Test Automation");
        skills.add(testing);
    }

    public static List<Project> getAllProjects() {
        return new ArrayList<>(projects);
    }

    public static List<Project> getLatestProjects() {
        int size = projects.size();
        if (size <= 3) {
            return new ArrayList<>(projects);
        }
        return new ArrayList<>(projects.subList(size - 3, size));
    }

    public static List<Skill> getAllSkills() {
        return new ArrayList<>(skills);
    }

    @Override
    public String toString() {
        return "PortfolioData{" +
                "projects=" + projects.size() +
                ", skills=" + skills.size() +
                '}';
    }
}