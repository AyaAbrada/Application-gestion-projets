<%@ page import="java.util.List" %>
<%@ page import="org.example.Model.Projet" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier Projet</title>
    <!-- Ajout de Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

    <div class="container mx-auto p-6">

        <h2 class="text-3xl font-semibold text-center text-gray-800 mb-6">Modifier Projet</h2>

        <%
            // Cast de l'objet "projet" en type Projet
            Projet projet = (Projet) request.getAttribute("projet");
            if (projet == null) {
                out.print("Erreur: Aucun projet trouvé.");
            }
        %>

        <!-- Formulaire de modification du projet -->
        <form action="ProjetServlet" method="POST" class="bg-white p-6 rounded-lg shadow-md">
            <input type="hidden" name="action" value="update" />
            <input type="hidden" name="id" value="<%= projet.getId_projet() %>" />

            <!-- Nom -->
            <div class="mb-4">
                <label for="nom" class="block text-gray-700 font-medium">Nom :</label>
                <input type="text" id="nom" name="nom" value="<%= projet.getNom() %>" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
            </div>

            <!-- Description -->
            <div class="mb-4">
                <label for="description" class="block text-gray-700 font-medium">Description :</label>
                <input type="text" id="description" name="description" value="<%= projet.getDescription() %>" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
            </div>

            <!-- Date de début -->
            <div class="mb-4">
                <label for="dateDebut" class="block text-gray-700 font-medium">Date de début :</label>
                <input type="date" id="dateDebut" name="dateDebut" value="<%= new SimpleDateFormat("yyyy-MM-dd").format(projet.getDateDebut()) %>" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
            </div>

            <!-- Date de fin -->
            <div class="mb-4">
                <label for="dateFin" class="block text-gray-700 font-medium">Date de fin :</label>
                <input type="date" id="dateFin" name="dateFin" value="<%= new SimpleDateFormat("yyyy-MM-dd").format(projet.getDateFin()) %>" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
            </div>

            <!-- Budget -->
            <div class="mb-4">
                <label for="budget" class="block text-gray-700 font-medium">Budget :</label>
                <input type="number" id="budget" name="budget" value="<%= projet.getBudjet() %>" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
            </div>

            <!-- Bouton de soumission -->
            <div class="mb-4">
                <button type="submit"  id = "buttonn" class="w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 transition">Mettre à jour Projet</button>
            </div>
        </form>

    </div>

    <!-- Scripts -->
    <script src="script.js"></script>
</body>
</html>
