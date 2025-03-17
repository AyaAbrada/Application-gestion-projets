<!DOCTYPE html>
<html lang="fr">
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Projets</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"

</head>
<body>
    <header>
        <h1>Gestion des Projets</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Accueil</a></li>
                <li><a href="task.jsp">Tâches</a></li>
                <li><a href="resources.jsp">Ressources</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Liste des Projets</h2>
        <table id="projects-list">
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Description</th>
                    <th>Date de début</th>
                    <th>Date de fin</th>
                    <th>Budget</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- La liste des projets sera ajoutée dynamiquement avec JS -->
            </tbody>
        </table>

        <h3>Ajouter un projet</h3>
        <form id="add-project-form">
            <label for="project-name">Nom :</label>
            <input type="text" id="project-name" required><br><br>
            <label for="project-description">Description :</label>
            <input type="text" id="project-description" required><br><br>
            <label for="project-start">Date de début :</label>
            <input type="date" id="project-start" required><br><br>
            <label for="project-end">Date de fin :</label>
            <input type="date" id="project-end" required><br><br>
            <label for="project-budget">Budget :</label>
            <input type="number" id="project-budget" required><br><br>
            <button type="submit" class = "btn btn-primary">Ajouter</button>
        </form>
    </main>

    <footer>
        <p>&copy; 2025 ConstructionXpert Services</p>
    </footer>
</body>
</html>
