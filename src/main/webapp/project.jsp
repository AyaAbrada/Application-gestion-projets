<%@ page import="java.util.List" %>
<%@ page import="org.example.Model.Projet" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Projets</title>
    <!-- Ajout de Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

    <!-- Titre de la page -->
    <div class="container mx-auto p-6">

    <!-- Header -->
            <header class="mb-8">
                <h1 class="text-3xl font-semibold text-center text-gray-800 mb-4">Gestion des Tâches</h1>
                <nav class="text-center">
                    <ul class="flex justify-center space-x-6">
                        <li><a href="index.jsp" class="text-blue-600 hover:text-blue-800">Accueil</a></li>
                        <li><a href="project.jsp" class="text-blue-600 hover:text-blue-800">Projets</a></li>
                        <li><a href="ressources.jsp" class="text-blue-600 hover:text-blue-800">Ressources</a></li>
                    </ul>
                </nav>
            </header>
        <h2 class="text-3xl font-semibold text-center text-gray-800 mb-6">Liste des Projets</h2>

        <!-- Table des projets -->
        <table class="min-w-full bg-white border border-gray-300 rounded-lg shadow-lg">
            <thead>
                <tr class="bg-blue-600 text-white">
                    <th class="py-2 px-4 border-b">Nom</th>
                    <th class="py-2 px-4 border-b">Description</th>
                    <th class="py-2 px-4 border-b">Date de Début</th>
                    <th class="py-2 px-4 border-b">Date de Fin</th>
                    <th class="py-2 px-4 border-b">Budget</th>
                    <th class="py-2 px-4 border-b">Actions</th>
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
                <tr class="hover:bg-gray-100">
                    <td class="py-2 px-4 border-b"><%= projet.getNom() %></td>
                    <td class="py-2 px-4 border-b"><%= projet.getDescription() %></td>
                    <td class="py-2 px-4 border-b"><%= new SimpleDateFormat("yyyy-MM-dd").format(projet.getDateDebut()) %></td>
                    <td class="py-2 px-4 border-b"><%= new SimpleDateFormat("yyyy-MM-dd").format(projet.getDateFin()) %></td>
                    <td class="py-2 px-4 border-b"><%= projet.getBudjet() %></td>
                    <td class="py-2 px-4 border-b">
                        <a href="ProjetServlet?action=edit&id=<%= projet.getId_projet() %>" class="text-blue-500 hover:text-blue-700">Edit</a> |
                        <a href="ProjetServlet?action=delete&id=<%= projet.getId_projet() %>" class="text-red-500 hover:text-red-700">Delete</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <!-- Formulaire d'ajout de projet -->
        <h3 class="text-2xl font-semibold mt-8 mb-4">Ajouter un Nouveau Projet</h3>
        <form action="ProjetServlet" method="POST" class="bg-white p-6 rounded-lg shadow-md">
            <input type="hidden" name="action" value="add" />

            <div class="mb-4">
                <label for="id" class="block text-gray-700">Id :</label>
                <input type="number" id="id" name="id" class="w-full px-4 py-2 border border-gray-300 rounded-md" required><br><br>
            </div>

            <div class="mb-4">
                <label for="nom" class="block text-gray-700">Nom :</label>
                <input type="text" id="nom" name="nom" class="w-full px-4 py-2 border border-gray-300 rounded-md" required><br><br>
            </div>

            <div class="mb-4">
                <label for="description" class="block text-gray-700">Description :</label>
                <input type="text" id="description" name="description" class="w-full px-4 py-2 border border-gray-300 rounded-md" required><br><br>
            </div>

            <div class="mb-4">
                <label for="dateDebut" class="block text-gray-700">Date de début :</label>
                <input type="date" id="dateDebut" name="dateDebut" class="w-full px-4 py-2 border border-gray-300 rounded-md" required><br><br>
            </div>

            <div class="mb-4">
                <label for="dateFin" class="block text-gray-700">Date de fin :</label>
                <input type="date" id="dateFin" name="dateFin" class="w-full px-4 py-2 border border-gray-300 rounded-md" required><br><br>
            </div>

            <div class="mb-4">
                <label for="budget" class="block text-gray-700">Budget :</label>
                <input type="number" id="budget" name="budget" class="w-full px-4 py-2 border border-gray-300 rounded-md" required><br><br>
            </div>

            <button type="submit" id = "buttonn" class="bg-blue-600 text-white px-6 py-2 rounded-md hover:bg-blue-700">Ajouter Projet</button>
        </form>
    </div>

    <!-- Scripts -->
    <script src="script.js"></script>
</body>
</html>
