package org.example.Model;
import java.util.Date;

public class Tache {
    String description;
    Date datDebut;
    Date datFin;
    String ressource;

    public Tache(String description, Date datDebut, Date datFin, String ressource) {
        this.description = description;
        this.datDebut = datDebut;
        this.datFin = datFin;
        this.ressource = ressource;
    }
    public Tache(){}

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
