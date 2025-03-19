<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Tâches</title>
    <!-- Ajout de Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

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

        <!-- Liste des Tâches -->
        <main>
            <h2 class="text-2xl font-medium text-gray-800 mb-4">Liste des Tâches</h2>

            <div class="overflow-x-auto bg-white rounded-lg shadow-md mb-6">
                <table class="min-w-full table-auto border-collapse">
                    <thead class="bg-blue-600 text-white">
                        <tr>
                            <th class="px-4 py-2 text-left">Description</th>
                            <th class="px-4 py-2 text-left">Date de Début</th>
                            <th class="px-4 py-2 text-left">Date de Fin</th>
                            <th class="px-4 py-2 text-left">Ressources</th>
                            <th class="px-4 py-2 text-left">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Liste des tâches sera générée par JavaScript -->
                    </tbody>
                </table>
            </div>

            <!-- Formulaire d'ajout de tâche -->
            <h3 class="text-xl font-medium text-gray-800 mb-4">Ajouter une Tâche</h3>
            <form class="bg-white p-6 rounded-lg shadow-md" action="#">
                <div class="mb-4">
                    <label for="project-name" class="block text-gray-700 font-medium">Nom :</label>
                    <input type="text" id="project-name" name="project-name" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <div class="mb-4">
                    <label for="project-description" class="block text-gray-700 font-medium">Description :</label>
                    <input type="text" id="project-description" name="project-description" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <div class="mb-4">
                    <label for="project-start" class="block text-gray-700 font-medium">Date de début :</label>
                    <input type="date" id="project-start" name="project-start" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <div class="mb-4">
                    <label for="project-end" class="block text-gray-700 font-medium">Date de fin :</label>
                    <input type="date" id="project-end" name="project-end" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <div class="mb-4">
                    <label for="ressource" class="block text-gray-700 font-medium">Ressources Nécessaires :</label>
                    <input type="number" id="ressource" name="ressource" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <button type="submit" id = "buttonn" class="w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 transition">Ajouter</button>
            </form>
        </main>
    </div>

    <!-- Scripts -->
    <script src="script.js"></script>
</body>
</html>
