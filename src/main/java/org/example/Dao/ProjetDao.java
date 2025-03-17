package org.example.Dao;

import org.example.Model.Projet;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjetDao {

    public int ajouterProjet(Projet projet) {
        int result = 0;
        String query = "INSERT INTO projets (id_projet, nom_projet, description_projet, date_debut_projet, date_fin_projet, budjet_tache) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, projet.getId_projet());
            ps.setString(2, projet.getNom());
            ps.setString(3, projet.getDescription());
            ps.setDate(4, new java.sql.Date(projet.getDateDebut().getTime()));
            ps.setDate(5, new java.sql.Date(projet.getDateFin().getTime()));
            ps.setFloat(6, projet.getBudjet());

            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public List<Projet> getAllProjets() {
        List<Projet> projets = new ArrayList<>();
        String query = "SELECT * FROM projets";

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                Projet projet = new Projet();
                projet.setId_projet(rs.getInt("id_projet"));
                projet.setNom(rs.getString("nom_projet"));
                projet.setDescription(rs.getString("description_projet"));
                projet.setDateDebut(rs.getDate("date_debut_projet"));
                projet.setDateFin(rs.getDate("date_fin_projet"));
                projet.setBudjet(rs.getFloat("budjet_tache"));
                projets.add(projet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return projets;
    }

    public int updateProjet(Projet projet, int id) {
        int result = 0;
        String query = "UPDATE projets SET nom_projet = ?, description_projet = ?, date_debut_projet = ?, date_fin_projet = ?, budjet_tache = ? WHERE id_projet = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, projet.getNom());
            ps.setString(2, projet.getDescription());
            ps.setDate(3, new java.sql.Date(projet.getDateDebut().getTime()));
            ps.setDate(4, new java.sql.Date(projet.getDateFin().getTime()));
            ps.setFloat(5, projet.getBudjet());
            ps.setInt(6, id);

            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public int deleteProjet(int id) {
        int result = 0;
        String query = "DELETE FROM projets WHERE id_projet = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, id);
            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
