<%@ page import="java.util.List" %>
<%@ page import="org.example.Model.Tache" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Tâches</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

    <div class="container mx-auto p-6">
        <header class="mb-8">
            <h1 class="text-3xl font-semibold text-center text-gray-800 mb-4">Gestion des Tâches</h1>
            <nav class="text-center">
                <ul class="flex justify-center space-x-6">
                    <li><a href="index.jsp" class="text-blue-600 hover:text-blue-800">Accueil</a></li>
                    <li><a href="ProjetServlet" class="text-blue-600 hover:text-blue-800">Projets</a></li>
                </ul>
            </nav>
        </header>

        <h2 class="text-3xl font-semibold text-center text-gray-800 mb-6">Liste des Tâches</h2>

        <table class="min-w-full bg-white border border-gray-300 rounded-lg shadow-lg">
            <thead>
                <tr class="bg-blue-600 text-white">
                    <th class="py-2 px-4 border-b">Description</th>
                    <th class="py-2 px-4 border-b">Date de Début</th>
                    <th class="py-2 px-4 border-b">Date de Fin</th>
                    <th class="py-2 px-4 border-b">Ressources</th>
                    <th class="py-2 px-4 border-b">Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Retrieve the list of tasks from the request attribute
                    List<Tache> taches = (List<Tache>) request.getAttribute("taches");

                    // If the list is null, initialize an empty list
                    if (taches == null) {
                        taches = new java.util.ArrayList<>();
                    }

                    // Iterate over each task and display it in the table
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    for (Tache tache : taches) {
                %>
                <tr class="hover:bg-gray-100">
                    <td class="py-2 px-4 border-b"><%= tache.getDescription() %></td>
                    <td class="py-2 px-4 border-b">
                        <%= (tache.getDateDebutTache() != null) ? sdf.format(tache.getDateDebutTache()) : "" %>
                    </td>
                    <td class="py-2 px-4 border-b">
                        <%= (tache.getDateFinTache() != null) ? sdf.format(tache.getDateFinTache()) : "" %>
                    </td>
                    <td class="py-2 px-4 border-b"><%= tache.getRessource() %></td>
                    <td class="py-2 px-4 border-b">
                        <a href="TacheServlet?action=delete&id=<%= tache.getId_tache() %>&id_projet=<%= request.getAttribute("id_projet") %>" class="text-red-500 hover:text-red-700">Supprimer</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <h3 class="text-2xl font-semibold mt-8 mb-4">Ajouter une Nouvelle Tâche</h3>

        <form action="TacheServlet" method="POST" class="bg-white p-6 rounded-lg shadow-md">
            <input type="hidden" name="action" value="add">
            <input type="hidden" name="id_projet" value="<%= request.getAttribute("id_projet") %>">

            <div class="mb-4">
                <label for="id_tache" class="block text-gray-700 font-medium">Tâche Id :</label>
                <input type="number" id="id_tache" name="id_tache" class="w-full px-4 py-2 border border-gray-300 rounded-md" required><br><br>
            </div>

            <div class="mb-4">
                <label for="description" class="block text-gray-700 font-medium">Description :</label>
                <input type="text" id="description" name="description" class="w-full px-4 py-2 border border-gray-300 rounded-md" required><br><br>
            </div>

            <div class="mb-4">
                <label for="start_date" class="block text-gray-700 font-medium">Date de Début :</label>
                <input type="date" id="start_date" name="start_date" class="w-full px-4 py-2 border border-gray-300 rounded-md"><br><br>
            </div>

            <div class="mb-4">
                <label for="end_date" class="block text-gray-700 font-medium">Date de Fin :</label>
                <input type="date" id="end_date" name="end_date" class="w-full px-4 py-2 border border-gray-300 rounded-md"><br><br>
            </div>

            <div class="mb-4">
                <label for="ressource" class="block text-gray-700 font-medium">Ressources :</label>
                <input type="text" id="ressource" name="ressource" class="w-full px-4 py-2 border border-gray-300 rounded-md"><br><br>
            </div>

            <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded-md">Ajouter Tâche</button>
        </form>
    </div>
</body>
</html>
