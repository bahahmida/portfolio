package org.example.portfolio.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Classe représentant une catégorie de compétences
 *
 * @author Bahaeddine Hmida
 * @version 1.0
 */
public class Skill implements Serializable {

    private static final long serialVersionUID = 1L;

    // Attributs
    private Long id;
    private String category;
    private List<String> skills;


    // ==================== CONSTRUCTEURS ====================

    public Skill() {
        this.skills = new ArrayList<>();
    }

    public Skill(String category) {
        this.category = category;
        this.skills = new ArrayList<>();
    }

    public Skill(String category, List<String> skills) {
        this.category = category;
        this.skills = skills != null ? skills : new ArrayList<>();
    }




    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<String> getSkills() {
        return skills;
    }

    public void setSkills(List<String> skills) {
        this.skills = skills != null ? skills : new ArrayList<>();
    }



    public void addSkill(String skill) {
        if (skill != null && !skill.trim().isEmpty()) {
            this.skills.add(skill.trim());
        }
    }

    /**
     * Supprime une compétence de la liste
     */

    public int getSkillCount() {
        return this.skills.size();
    }

    /**
     * Retourne les compétences sous forme de chaîne séparée par des virgules
     */
    public String getSkillsAsString() {
        return String.join(", ", skills);
    }

    @Override
    public String toString() {
        return "Skill{" +
                "id=" + id +
                ", category='" + category + '\'' +
                ", skills=" + skills +
                '}';
    }
}