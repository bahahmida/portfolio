package org.example.portfolio.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


public class Project implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    private String name;
    private String description;
    private String githubLink;
    private String technologies;  // Technologies utilisées (séparées par des virgules)
    private String category;      // Catégorie : "Web", "Mobile", "Desktop", etc.


    private List<String> techList;


    public Project(String name, String description, String githubLink) {
        this.name = name;
        this.description = description;
        this.githubLink = githubLink;
        this.techList = new ArrayList<>();
    }





    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGithubLink() {
        return githubLink;
    }

    public void setGithubLink(String githubLink) {
        this.githubLink = githubLink;
    }

    public String getTechnologies() {
        return technologies;
    }

    public void setTechnologies(String technologies) {
        this.technologies = technologies;
        // Mettre à jour la liste
        this.techList.clear();
        if (technologies != null && !technologies.isEmpty()) {
            String[] techs = technologies.split(",");
            for (String tech : techs) {
                techList.add(tech.trim());
            }
        }
    }

    public List<String> getTechList() {
        return techList;
    }

    public void setTechList(List<String> techList) {
        this.techList = techList;
        // Mettre à jour la chaîne
        this.technologies = String.join(", ", techList);
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }


    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", githubLink='" + githubLink + '\'' +
                ", technologies='" + technologies + '\'' +
                ", category='" + category + '\'' +
                '}';
    }
}