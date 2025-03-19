<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Tâches</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"

</head>
<body>
    <header>
        <h1>Gestion des Tâches</h1><br>
        <nav>
            <ul>
                <li><a href="index.jsp">Accueil</a></li>
                <li><a href="project.jsp">Projets</a></li>
                <li><a href="ressources.jsp">Ressources</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Liste des Tâches</h2>
        <table id="tasks-list">
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Date de début</th>
                    <th>Date de fin</th>
                    <th>Ressources</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Liste des tâches sera générée par JavaScript -->
            </tbody>
        </table>
        <h3>Ajouter un projet</h3>
                <form id="add-project-form">
                    <label for="project-name">Nom :</label>
                    <input type="text" id="project-name" name="project-name" required><br><br>
                    <label for="project-description">Description :</label>
                    <input type="text" id="project-description" name="project-description" required><br><br>
                    <label for="project-start">Date de début :</label>
                    <input type="date" id="project-start" name="project-start" required><br><br>
                    <label for="project-end">Date de fin :</label>
                    <input type="date" id="project-end" name="project-end" required><br><br>
                    <label for="project-budget">Ressources Nécessaires :</label>
                    <input type="number" id="ressource" name="ressource " required><br><br>
                    <button id="buttonn" type="submit" class = "btn btn-primary">Ajouter</button>
                </form>
    </main>

<script src="script.js"></script>
</body>
</html>
