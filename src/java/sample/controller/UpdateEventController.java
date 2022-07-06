/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import sample.posts.EventDAO;
import sample.posts.EventPost;
import sample.users.UserDTO;

/**
 *
 * @author tvfep
 */
@WebServlet(name = "UpdateEventController", urlPatterns = {"/UpdateEventController"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UpdateEventController extends HttpServlet {

    private static final String CLB_PAGE = "EventListByOrgController";
    private static final String MOD_PAGE = "EventListController";

    private static final String ERROR = "error.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String url = ERROR;
        boolean check = false;
        HttpSession session = request.getSession();
        UserDTO user = new UserDTO();
        EventDAO evtDao = new EventDAO();
        String takePlaceDate = null;
        String content = null;
        String title = null;
        String location = null;
        String imgUrl = null;
        String eventType = null;
        String speaker = null;
        String summary = null;
        try {
            user = (UserDTO) session.getAttribute("LOGIN_USER");
            String id = request.getParameter("eventID");
            String FPT = request.getParameter("FPT");

            if ("CLB".equals(user.getRoleID())) {

                takePlaceDate = request.getParameter("takePlaceDate");
                content = request.getParameter("content");
                title = request.getParameter("title");
                location = request.getParameter("location");
                eventType = request.getParameter("eventType");
                speaker = request.getParameter("speaker");
                summary = request.getParameter("summary");

                Part filePart = request.getPart("image");
                String fileName = filePart.getSubmittedFileName();
                String path = "";
                if (!fileName.isEmpty()) {
                    for (Part part : request.getParts()) {
                        part.write("D:\\Document\\Semester 5 FPT\\SWP391\\event-management-java-web-develop\\web\\Image\\" + fileName);
                    }
                    path = "Image\\" + fileName;
                }

                EventPost event = new EventPost(takePlaceDate, location, eventType, speaker, id, title, content, path, summary);
                check = evtDao.updateAnEvent(event);
                if (check == true) {
                    url = "MainController?action=EventDetail&eventID=" + id;
                }

            } else if ("MOD".equals(user.getRoleID())) {
                if ("FPT".equals(FPT)) {
                    takePlaceDate = request.getParameter("takePlaceDate");
                    content = request.getParameter("content");
                    title = request.getParameter("title");
                    location = request.getParameter("location");
                    eventType = request.getParameter("eventType");
                    speaker = request.getParameter("speaker");
                    summary = request.getParameter("summary");
                    boolean status = Boolean.parseBoolean(request.getParameter("status"));

                    Part filePart = request.getPart("image");
                    String fileName = filePart.getSubmittedFileName();
                    String path = "";
                    if (!fileName.isEmpty()) {
                        for (Part part : request.getParts()) {
                            part.write("D:\\Document\\Semester 5 FPT\\SWP391\\event-management-java-web-develop\\web\\Image\\" + fileName);
                        }
                        path = "Image\\" + fileName;
                    }

                    EventPost event = new EventPost(takePlaceDate, location, eventType, speaker, id, title, content, path, summary, status);
                    check = evtDao.updateAnEventByAdmin(event);

                } else {
                    boolean status = Boolean.parseBoolean(request.getParameter("status"));
                    check = evtDao.updateStatusEventByID(id, status);
                }

                if (check == true) {
                    url = "MainController?action=EventDetail&eventID=" + id;
                }

            }

        } catch (SQLException ex) {
            Logger.getLogger(UpdateEventController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
