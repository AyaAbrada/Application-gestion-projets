document.addEventListener('DOMContentLoaded', () => {
    const addProjectBtn = document.getElementById('addProjectBtn');
    const projectsList = document.getElementById('projects-list').getElementsByTagName('tbody')[0];

    // Liste simulée de projets
    const projects = [
        { name: "Projet A", description: "Construction d'un immeuble", startDate: "2025-04-01", endDate: "2025-10-01", budget: 1000000 },
        { name: "Projet B", description: "Rénovation d'un bâtiment", startDate: "2025-05-01", endDate: "2025-08-01", budget: 500000 }
    ];

    function displayProjects() {
        projectsList.innerHTML = '';
        projects.forEach((project, index) => {
            const row = projectsList.insertRow();
            row.innerHTML = `
                <td>${project.name}</td>
                <td>${project.description}</td>
                <td>${project.startDate}</td>
                <td>${project.endDate}</td>
                <td>${project.budget}</td>
                <td>
                    <button onclick="editProject(${index})">Editer</button>
                    <button onclick="deleteProject(${index})">Supprimer</button>
                </td>
            `;
        });
    }

    function editProject(index) {
        const project = projects[index];
        alert(`Édition du projet : ${project.name}`);
    }

    function deleteProject(index) {
        const confirmation = confirm('Êtes-vous sûr de vouloir supprimer ce projet ?');
        if (confirmation) {
            projects.splice(index, 1);
            displayProjects();
        }
    }

    addProjectBtn.addEventListener('click', () => {
        const newProject = {
            name: "Nouveau Projet",
            description: "Description du nouveau projet",
            startDate: "2025-06-01",
            endDate: "2025-12-01",
            budget: 2000000
        };
        projects.push(newProject);
        displayProjects();
    });

    // Initialisation de l'affichage des projets
    displayProjects();
});
