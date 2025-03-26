<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert - Accueil</title>
    <!-- Ajout de Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

    <!-- Header Section -->
    <header class="bg-blue-600 text-white py-6">
        <h1 class="text-4xl font-semibold text-center">Bienvenue sur ConstructionXpert</h1>
        <nav class="mt-4 text-center">
            <ul class="flex justify-center space-x-6">
                <li><a href="ProjetServlet?action=list" class="hover:text-blue-300">Projets</a></li>
            </ul>
        </nav>
    </header>

    <main class="container mx-auto mt-8 px-4">
        <section class="bg-white p-6 rounded-lg shadow-md">
            <h2 class="text-3xl font-semibold text-center text-gray-800">Gérer vos projets de construction efficacement</h2>
            <p class="mt-4 text-center text-lg text-gray-600">Créez, gérez et suivez l'avancement de vos projets de construction avec facilité.</p>
        </section>
    </main>

    <script src="script.js"></script>
</body>
</html>
