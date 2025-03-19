<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Ressources</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"

</head>
<body>
    <header>
        <h1>Gestion des Ressources</h1><br>
        <nav>
            <ul>
                <li><a href="index.jsp">Accueil</a></li>
                <li><a href="project.jsp">Projets</a></li>
                <li><a href="task.jsp">Tâches</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Liste des Ressources</h2>
        <table id="resources-list">
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Type</th>
                    <th>Quantité</th>
                    <th>Fournisseur</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Liste des ressources sera générée par JavaScript -->
            </tbody>
        </table>
        <h3>Ajouter un projet</h3>
                <form id="add-project-form">
                    <label for="project-name">Nom :</label>
                    <input type="text" id="project-name" name="name" required><br><br>
                    <label for="type">Type :</label>
                    <input type="text" id="type" name="name" required><br><br>
                    <label for="type">Quantité :</label>
                    <input type="text" id="quantite" name="name" required><br><br>
                    <label for="info-fornisseur">Information du fournisseur :</label>
                    <input type="text" id="info-fornisseur" name="name" required><br><br>
                    <button type="submit" class = "btn btn-primary">Ajouter</button>
                </form>
    </main>


<script src="script.js"></script>
</body>
</html>
