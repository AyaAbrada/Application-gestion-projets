package org.example.Model;
import java.util.Date;

public class Tache {
    int id_tache;
    String description;
    Date datDebut;
    Date datFin;
    String ressource;

    public Tache(int id_tache, String description, Date datDebut, Date datFin, String ressource) {
        this.id_tache = id_tache;
        this.description = description;
        this.datDebut = datDebut;
        this.datFin = datFin;
        this.ressource = ressource;
    }
    public Tache(){}

    public int getId_tache() {
        return id_tache;
    }

    public void setId_tache(int id_tache) {
        this.id_tache = id_tache;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDatDebut() {
        return datDebut;
    }

    public void setDatDebut(Date datDebut) {
        this.datDebut = datDebut;
    }

    public Date getDatFin() {
        return datFin;
    }

    public void setDatFin(Date datFin) {
        this.datFin = datFin;
    }

    public String getRessource() {
        return ressource;
    }

    public void setRessource(String ressource) {
        this.ressource = ressource;
    }
}
