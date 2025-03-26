package org.example.Controller;

import org.example.Dao.TacheDao;
import org.example.Model.Tache;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/TacheServlet")
public class TacheServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("list".equals(action)) {
            // List all tasks
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            TacheDao tacheDao = new TacheDao();
            List<Tache> taches = tacheDao.getAllTaches(id_projet);
            request.setAttribute("taches", taches);
            request.setAttribute("id_projet", id_projet);
            request.getRequestDispatcher("task.jsp").forward(request, response);
        } else if ("edit".equals(action)) {
            // Get the task for editing
            int id_tache = Integer.parseInt(request.getParameter("id"));
            TacheDao tacheDao = new TacheDao();
            Tache tache = tacheDao.getTaskById(id_tache);
            request.setAttribute("tache", tache);
            request.getRequestDispatcher("editTask.jsp").forward(request, response);
        } else if ("delete".equals(action)) {
            // Delete task
            int id_tache = Integer.parseInt(request.getParameter("id"));
            TacheDao tacheDao = new TacheDao();
            tacheDao.supprimerTache(id_tache);
            response.sendRedirect("TacheServlet?action=list&id_projet=" + request.getParameter("id_projet"));
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        Tache tache = new Tache();

        tache.setId_projet(Integer.parseInt(request.getParameter("id_projet")));
        tache.setId_tache(Integer.parseInt(request.getParameter("id_tache")));
        tache.setDescription(request.getParameter("description"));
        tache.setRessource(request.getParameter("ressource"));

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date dateDebut = null;
        Date dateFin = null;
        try {
            if (request.getParameter("start_date") != null && !request.getParameter("start_date").isEmpty()) {
                dateDebut = sdf.parse(request.getParameter("start_date"));
            }
            if (request.getParameter("end_date") != null && !request.getParameter("end_date").isEmpty()) {
                dateFin = sdf.parse(request.getParameter("end_date"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        tache.setDateDebutTache(dateDebut);
        tache.setDateFinTache(dateFin);

        TacheDao tacheDao = new TacheDao();
        if ("add".equals(action)) {
            tacheDao.ajouterTache(tache);
        } else if ("update".equals(action)) {
            tacheDao.modifierTache(tache);
        }

        // Redirect to the task list after the operation
        response.sendRedirect("TacheServlet?action=list&id_projet=" + tache.getId_projet());
    }
}
