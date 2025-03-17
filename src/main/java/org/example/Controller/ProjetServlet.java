package org.example.Controller;

import org.example.Dao.ProjetDao;
import org.example.Model.Projet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/ProjetServlet")
public class ProjetServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProjetDao projetDao = new ProjetDao();
        List<Projet> projets = projetDao.getAllProjets();
        request.setAttribute("projets", projets);
        RequestDispatcher dispatcher = request.getRequestDispatcher("project.jsp");
        dispatcher.forward(request, response);

    }

    // Créer un projet
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id_projet = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nom");
        String description = request.getParameter("description");
        String dateDebutStr = request.getParameter("dateDebut");
        String dateFinStr = request.getParameter("dateFin");
        float budget = Float.parseFloat(request.getParameter("budget"));

        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date dateDebut = sdf.parse(dateDebutStr);
            java.util.Date dateFin = sdf.parse(dateFinStr);

            Projet projet = new Projet(id_projet, nom, description, dateDebut, dateFin, budget);

            ProjetDao projetDao = new ProjetDao();
            int result = projetDao.ajouterProjet(projet);

            if (result > 0) {
                response.sendRedirect("ProjetServlet");
            } else {
                request.setAttribute("message", "Erreur lors de l'ajout du projet.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Erreur lors de l'ajout du projet.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }

    }


}
