package org.example.Model;
import java.util.Date;

public class Projet {
    int id_projet;
    String nom;
    String description;
    Date dateDebut;
    Date dateFin;
    float budjet;

    public Projet(int id_projet , String nom, String description, Date dateDebut, Date dateFin, float budjet) {
        this.nom = nom;
        this.id_projet = id_projet;
        this.description = description;
        this.dateDebut = dateDebut;
        this.dateFin = dateFin;
        this.budjet = budjet;
    }

    public Projet(){}

    public int getId_projet() {
        return id_projet;
    }

    public void setId_projet(int id_projet) {
        this.id_projet = id_projet;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateDebut() {
        return dateDebut;
    }

    public void setDateDebut(Date dateDebut) {
        this.dateDebut = dateDebut;
    }

    public Date getDateFin() {
        return dateFin;
    }

    public void setDateFin(Date dateFin) {
        this.dateFin = dateFin;
    }

    public float getBudjet() {
        return budjet;
    }

    public void setBudjet(float budjet) {
        this.budjet = budjet;
    }
}
