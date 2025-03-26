package org.example.Model;
import java.util.Date;

public class Tache {
    int id_tache;
    int id_projet;
    String description;
    Date datDebutTache;
    Date datFinTache;
    String ressource;

    public Tache(int id_tache,int id_projet, String description, Date datDebut, Date datFin, String ressource) {
        this.id_projet = id_projet;
        this.id_tache = id_tache;
        this.description = description;
        this.datDebutTache = datDebut;
        this.datFinTache = datFin;
        this.ressource = ressource;
    }
    public Tache(){}

    public int getId_tache() {
        return id_tache;
    }

    public void setId_tache(int id_tache) {
        this.id_tache = id_tache;
    }

    public int getId_projet() {
        return id_projet;
    }

    public void setId_projet(int id_projet) {
        this.id_projet = id_projet;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRessource() {
        return ressource;
    }

    public void setRessource(String ressource) {
        this.ressource = ressource;
    }

    public Date getDateDebutTache() {
        return datDebutTache;
    }

    public Date getDateFinTache() {
        return datFinTache;
    }

    public void setDateDebutTache(Date dateDebutTache) {
        this.datDebutTache = dateDebutTache;
    }

    public void setDateFinTache(Date dateFinTache) {
        this.datFinTache = dateFinTache;
    }
}
