package org.example.Dao;

import org.example.Model.Tache;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TacheDao {

    // Create - Add Task
    public void ajouterTache(Tache tache) {
        String sql = "INSERT INTO taches (id_tache,id_projet, description_tache, date_debut_tache, date_fin_tache, resources) VALUES (?, ?, ?, ?, ?,?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1,tache.getId_tache());
            stmt.setInt(2, tache.getId_projet());
            stmt.setString(3, tache.getDescription());
            stmt.setDate(4, new java.sql.Date(tache.getDateDebutTache().getTime()));
            stmt.setDate(5, new java.sql.Date(tache.getDateFinTache().getTime()));
            stmt.setString(6, tache.getRessource());

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Read - Get All Tasks
    public List<Tache> getAllTaches(int id) {
        List<Tache> taches = new ArrayList<>();
        String sql = "SELECT * FROM taches where id_projet = " + id;

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Tache tache = new Tache();
                tache.setId_tache(rs.getInt("id_tache"));
                tache.setId_projet(rs.getInt("id_projet"));
                tache.setDescription(rs.getString("description_tache"));
                tache.setDateDebutTache(rs.getDate("date_debut_tache"));
                tache.setDateFinTache(rs.getDate("date_fin_tache"));
                tache.setRessource(rs.getString("resources"));
                taches.add(tache);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return taches;
    }

    // Update - Edit Task
    public void modifierTache(Tache tache) {
        String sql = "UPDATE taches SET id_projet=?, description_tache=?, date_debut_tache=?, date_fin_tache=?, resources=? WHERE id_tache=?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, tache.getId_projet());
            stmt.setString(2, tache.getDescription());
            stmt.setDate(3, new java.sql.Date(tache.getDateDebutTache().getTime()));
            stmt.setDate(4, new java.sql.Date(tache.getDateFinTache().getTime()));
            stmt.setString(5, tache.getRessource());
            stmt.setInt(6, tache.getId_tache());

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Delete - Remove Task
    public int supprimerTache(int id_tache) {
        String sql = "DELETE FROM taches WHERE id_tache=?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id_tache);
            return stmt.executeUpdate();  // Returns the number of affected rows
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    // Read - Get Task by ID
    public Tache getTaskById(int id_tache) {
        Tache tache = null;
        String sql = "SELECT * FROM taches WHERE id_tache=?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id_tache);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                tache = new Tache();
                tache.setId_tache(rs.getInt("id_tache"));
                tache.setId_projet(rs.getInt("id_projet"));
                tache.setDescription(rs.getString("description_tache"));
                tache.setDateDebutTache(rs.getDate("date_debut_tache"));
                tache.setDateFinTache(rs.getDate("date_fin_tache"));
                tache.setRessource(rs.getString("resources"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tache;
    }
}
