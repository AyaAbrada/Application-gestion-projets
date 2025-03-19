package org.example.Model;

public class Ressource {
    int id_ressource;
    String nom;
    String type;
    float quantite;
    String infotmationFournisseur;

    public Ressource(int id_ressource, String nom, String type, float quantite, String infotmationFournisseur) {
        this.id_ressource = id_ressource;
        this.nom = nom;
        this.type = type;
        this.quantite = quantite;
        this.infotmationFournisseur = infotmationFournisseur;
    }
    public Ressource(){}

    public int getId_ressource() {
        return id_ressource;
    }

    public void setId_ressource(int id_ressource) {
        this.id_ressource = id_ressource;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getQuantite() {
        return quantite;
    }

    public void setQuantite(float quantite) {
        this.quantite = quantite;
    }

    public String getInfotmationFournisseur() {
        return infotmationFournisseur;
    }

    public void setInfotmationFournisseur(String infotmationFournisseur) {
        this.infotmationFournisseur = infotmationFournisseur;
    }
}
