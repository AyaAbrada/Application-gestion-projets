<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Ressources</title>
    <!-- Ajout de Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

    <div class="container mx-auto p-6">

        <!-- Header -->
        <header class="mb-8">
            <h1 class="text-3xl font-semibold text-center text-gray-800 mb-4">Gestion des Ressources</h1>
            <nav class="text-center">
                <ul class="flex justify-center space-x-6">
                    <li><a href="index.jsp" class="text-blue-600 hover:text-blue-800">Accueil</a></li>
                    <li><a href="project.jsp" class="text-blue-600 hover:text-blue-800">Projets</a></li>
                    <li><a href="task.jsp" class="text-blue-600 hover:text-blue-800">Tâches</a></li>
                </ul>
            </nav>
        </header>

        <!-- Liste des Ressources -->
        <main>
            <h2 class="text-2xl font-medium text-gray-800 mb-4">Liste des Ressources</h2>

            <div class="overflow-x-auto bg-white rounded-lg shadow-md mb-6">
                <table class="min-w-full table-auto border-collapse">
                    <thead class="bg-blue-600 text-white">
                        <tr>
                            <th class="px-4 py-2 text-left">Nom</th>
                            <th class="px-4 py-2 text-left">Type</th>
                            <th class="px-4 py-2 text-left">Quantité</th>
                            <th class="px-4 py-2 text-left">Fournisseur</th>
                            <th class="px-4 py-2 text-left">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Liste des ressources sera générée par JavaScript -->
                    </tbody>
                </table>
            </div>

            <!-- Formulaire d'ajout de ressource -->
            <h3 class="text-xl font-medium text-gray-800 mb-4">Ajouter une Ressource</h3>
            <form class="bg-white p-6 rounded-lg shadow-md" action="#">
                <div class="mb-4">
                    <label for="project-name" class="block text-gray-700 font-medium">Nom :</label>
                    <input type="text" id="project-name" name="name" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <div class="mb-4">
                    <label for="type" class="block text-gray-700 font-medium">Type :</label>
                    <input type="text" id="type" name="type" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <div class="mb-4">
                    <label for="quantite" class="block text-gray-700 font-medium">Quantité :</label>
                    <input type="text" id="quantite" name="quantite" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <div class="mb-4">
                    <label for="info-fornisseur" class="block text-gray-700 font-medium">Information du fournisseur :</label>
                    <input type="text" id="info-fornisseur" name="info-fornisseur" class="w-full px-4 py-2 border border-gray-300 rounded-md" required>
                </div>

                <button type="submit" id = "buttonn" class="w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 transition">Ajouter</button>
            </form>
        </main>
    </div>

    <!-- Scripts -->
    <script src="script.js"></script>
</body>
</html>
