<%@ page import="java.util.List" %>
<%@ page import="org.example.Model.Projet" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Projets</title>
    <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"

</head>
<body>

<h2>Liste des Projets</h2>

<table border="1">
    <thead>
        <tr>
            <th>Nom</th>
            <th>Description</th>
            <th>Date de Début</th>
            <th>Date de Fin</th>
            <th>Budget</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <%
            // Retrieve the list of projets from the request attribute
            List<Projet> projets = (List<Projet>) request.getAttribute("projets");

            // If the list is null, initialize an empty list
            if (projets == null) {
                projets = new java.util.ArrayList<>();
            }

            // Iterate over each projet and display it in the table
            for (Projet projet : projets) {
        %>
        <tr>
            <td><%= projet.getNom() %></td>
            <td><%= projet.getDescription() %></td>
            <td><%= new SimpleDateFormat("yyyy-MM-dd").format(projet.getDateDebut()) %></td>
            <td><%= new SimpleDateFormat("yyyy-MM-dd").format(projet.getDateFin()) %></td>
            <td><%= projet.getBudjet() %></td>
            <td>
                <!-- Edit and delete links -->
                <a href="ProjetServlet?action=edit&id=<%= projet.getId_projet() %>">Edit</a> | <!-- Fixed method name for ID -->
                <a href="ProjetServlet?action=delete&id=<%= projet.getId_projet() %>">Delete</a> <!-- Fixed method name for ID -->
            </td>
        </tr>
        <% } %>
    </tbody>
</table>

<h3>Ajouter un Nouveau Projet</h3>
<form action="ProjetServlet" method="POST">
    <label for="id">Id :</label>
    <input type="number" id="id" name="id" required><br><br>

    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" required><br><br>

    <label for="description">Description :</label>
    <input type="text" id="description" name="description" required><br><br>

    <label for="dateDebut">Date de début :</label>
    <input type="date" id="dateDebut" name="dateDebut" required><br><br>

    <label for="dateFin">Date de fin :</label>
    <input type="date" id="dateFin" name="dateFin" required><br><br>

    <label for="budget">Budget :</label>
    <input type="number" id="budget" name="budget" required><br><br>

    <button type="submit">Ajouter Projet</button>
</form>

</body>
</html>
