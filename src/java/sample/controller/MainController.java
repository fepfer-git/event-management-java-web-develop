/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author light
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String LIST_EVENT = "ListEvent";
    private static final String LIST_EVENT_CONTROLLER = "EventListController";

    private static final String LIST_LOCATION = "ListLocation";
    private static final String LIST_LOCATION_CONTROLLER = "ListLocationController";

    private static final String LIST_ORG_EVENT = "ListOrgEvent";
    private static final String LIST_ORG_EVENT_CONTROLLER = "EventListByOrgController";

    private static final String SEARCH_EVENT = "SearchEvent";
    private static final String SEARCH_CONTROLLER = "SearchController";

    private static final String EVENT_DETAIL = "EventDetail";
    private static final String DETAIL_CONTROLLER = "DetailController";

    private static final String CREATE_EVENT = "CreateEvent";
    private static final String CREATE_EVENT_CONTROLLER = "AddAnEventController";

    private static final String UPDATE_EVENT = "UpdateEvent";
    private static final String UPDATE_EVENT_CONTROLLER = "UpdateEventController";

    private static final String DELETE_AN_EVENT = "DeleteEvent";
    private static final String DELETE_AN_EVENT_CONTROLLER = "DeleteAnEventController";

    private static final String EVT_TYPE_AND_LOCALTION = "EventTypeAndLocation";
    private static final String EVT_TYPE_AND_LOCALTION_CONTROLLER = "EventTypeAndLocationController";

    private static final String LIST_BLOG = "ListBlog";
    private static final String LIST_BLOG_CONTROLLER = "BlogListController";

    private static final String BLOG_DETAIL = "BlogDetail";
    private static final String BLOG_DETAIL_CONTROLLER = "BlogDetailController";

    private static final String SEARCH_BLOG = "SearchBlog";
    private static final String SEARCH_BLOG_CONTROLLER = "SearchBlogController";

    private static final String CREATE_BLOG = "CreateBlog";
    private static final String CREATE_BLOG_CONTROLLER = "AddAnBlogController";

    private static final String UPDATE_BLOG = "UpdateBlog";
    private static final String UPDATE_BLOG_CONTROLLER = "UpdateBlogController";

    private static final String DELETE_A_BLOG = "DeleteBlog";
    private static final String DELETE_BLOG_CONTROLLER = "DeleteBlogController";

    private static final String SEARCH_EVENT_BY_ORG = "SearchOrgEvent";
    private static final String SEARCH_EVENT_BY_ORG_CONTROLLER = "SearchEventByOrgController";

    private static final String ERROR = "error.jsp";
    private static final String SEARCH_ORG = "SearchOrg";
    private static final String SEARCH_ORG_CONTROLLER = "SearchOrgController";
    private static final String SEARCH_USER = "SearchUser";
    private static final String SEARCH_USER_CONTROLLER = "SearchUserController";
    private static final String SEARCH_MANAGER = "SearchManager";
    private static final String SEARCH_MANAGER_CONTROLLER = "SearchManagerController";

    private static final String CREATE_ORGANIZATION = "CreateOrg";
    private static final String CREATE_ORGANIZATION_CONTROLLER = "CreateOrgController";
    private static final String CREATE_USER = "CreateUser";
    private static final String CREATE_USER_CONTROLLER = "RegisterController";
    private static final String CREATE_MANAGER = "CreateManager";
    private static final String CREATE_MANAGER_CONTROLLER = "CreateManagerController";

    private static final String DELETE_USER = "DeleteUser";
    private static final String DELETE_USER_CONTROLLER = "DeleteUserController";
    private static final String DELETE_ORG = "DeleteOrg";
    private static final String DELETE_ORG_CONTROLLER = "DeleteOrgController";
    private static final String DELETE_MANAGER = "DeleteManager";
    private static final String DELETE_MANAGER_CONTROLLER = "DeleteManagerController";

    private static final String UPDATE_ORG = "UpdateOrg";
    private static final String UPDATE_ORG_CONTROLLER = "UpdateOrgController";
    private static final String UPDATE_USER = "UpdateUser";
    private static final String UPDATE_USER_CONTROLLER = "UpdateUserController";
    private static final String UPDATE_MANAGER = "UpdateManager";
    private static final String UPDATE_MANAGER_CONTROLLER = "UpdateManagerController";

    private static final String ADMIN_USER_PAGE = "AdminUserPage";
    private static final String ADMIN_USER_PAGE_CONTROLLER = "AdminUserPageController";
    private static final String ADMIN_MANAGER_PAGE = "AdminManagerPage";
    private static final String ADMIN_MANAGER_PAGE_CONTROLLER = "AdminManagerPageController";
    private static final String ADMIN_ORG_PAGE = "AdminOrgPage";
    private static final String ADMIN_ORG_PAGE_CONTROLLER = "AdminOrgPageController";

    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String LOGIN = "Login";
    private static final String REGISTER_CONTROLLER = "RegisterController";
    private static final String REGISTER = "Register";
    private static final String LOGIN_PAGE_CONTROLLER = "login.jsp";
    private static final String LOGIN_PAGE = "loginpage";

    private static final String DATA_TYPE_CONTROLLER = "UserDataController";
    private static final String DATA_TYPE = "dataType";

    private static final String PROFILE_PAGE_CONTROLLER = "profile.jsp";
    private static final String PROFILE_PAGE = "profilepage";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String LOGOUT = "Logout";
    private static final String HOME_PAGE_CONTROLLER = "homepage.jsp";
    private static final String HOME_PAGE = "homepage";
    private static final String USER_UPDATE_PROFILE_CONTROLLER = "UpdateProfileController";
    private static final String USER_UPDATE_PROFILE = "updateprofile";

    private static final String APPROVE_EVENT = "ApproveEvent";
    private static final String APPROVE_EVENT_CONTROLLER = "ApproveEventController";

    private static final String DECLINE_EVENT = "DeclineEvent";
    private static final String DECLINE_EVENT_CONTROLLER = "ApproveEventController";

    private static final String FILTER_EVENT = "FilterEvent";
    private static final String FILTER_EVENT_CONTROLLER = "FilterEventController";

    private static final String COMMENT = "Comment";
    private static final String COMMENT_CONTROLLER = "CommentController";

    private static final String REPLY_COMMENT = "ReplyComment";
    private static final String REPLY_COMMENT_CONTROLLER = "CommentController";

    private static final String DELETE_COMMENT = "DeleteComment";
    private static final String DELETE_COMMENT_CONTROLLER = "DeleteCommentController";

    private static final String UPDATE_ADMIN_PROFILE = "UpdateAdminProfile";
    private static final String UPDATE_ADMIN_PROFILE_CONTROLLER = "UpdateManagerController";

    private static final String ADMIN_PROFILE = "AdminProfile";
    private static final String ADMIN_PROFILE_CONTROLLER = "DisplayNotificationController";

    private static final String LIST_PARTICIPANTS = "ListParticipants";
    private static final String LIST_PARTICIPANTS_CONTROLLER = "ListParticipantsController";

    private static final String DELETE_LOCATION = "DeleteLocation";
    private static final String DELETE_LOCATION_CONTROLLER = "DeleteLocationController";

    private static final String UPDATE_LOCATION = "UpdateLocation";
    private static final String UPDATE_LOCATION_CONTROLLER = "UpdateLocationController";

    private static final String CREATE_LOCATION = "CreateLocation";
    private static final String CREATE_LOCATION_CONTROLLER = "CreateLocationController";

    private static final String SEARCH_LOCATION = "SearchLocation";
    private static final String SEARCH_LOCATION_CONTROLLER = "SearchLocationController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String action = request.getParameter("action");
            if (SEARCH_ORG.equals(action)) {
                url = SEARCH_ORG_CONTROLLER;

            } else if (SEARCH_USER.equals(action)) {
                url = SEARCH_USER_CONTROLLER;

            } else if (SEARCH_MANAGER.equals(action)) {
                url = SEARCH_MANAGER_CONTROLLER;

            } else if (CREATE_ORGANIZATION.equals(action)) {
                url = CREATE_ORGANIZATION_CONTROLLER;

            } else if (DELETE_USER.equals(action)) {
                url = DELETE_USER_CONTROLLER;

            } else if (DELETE_ORG.equals(action)) {
                url = DELETE_ORG_CONTROLLER;

            } else if (DELETE_MANAGER.equals(action)) {
                url = DELETE_MANAGER_CONTROLLER;

            } else if (ADMIN_MANAGER_PAGE.equals(action)) {
                url = ADMIN_MANAGER_PAGE_CONTROLLER;

            } else if (ADMIN_ORG_PAGE.equals(action)) {
                url = ADMIN_ORG_PAGE_CONTROLLER;

            } else if (ADMIN_USER_PAGE.equals(action)) {
                url = ADMIN_USER_PAGE_CONTROLLER;

            } else if (UPDATE_ORG.equals(action)) {
                url = UPDATE_ORG_CONTROLLER;

            } else if (UPDATE_USER.equals(action)) {
                url = UPDATE_USER_CONTROLLER;

            } else if (LOGIN.equals(action)) {
                url = LOGIN_CONTROLLER;

            } else if (REGISTER.equals(action)) {
                url = REGISTER_CONTROLLER;

            } else if (LOGIN_PAGE.equals(action)) {
                url = LOGIN_PAGE_CONTROLLER;

            } else if (DATA_TYPE.equals(action)) {
                url = DATA_TYPE_CONTROLLER;

            } else if (PROFILE_PAGE.equals(action)) {
                url = PROFILE_PAGE_CONTROLLER;

            } else if (LOGOUT.equals(action)) {
                url = LOGOUT_CONTROLLER;

            } else if (HOME_PAGE.equals(action)) {
                url = HOME_PAGE_CONTROLLER;

            } else if (USER_UPDATE_PROFILE.equals(action)) {
                url = USER_UPDATE_PROFILE_CONTROLLER;

            } else if (CREATE_USER.equals(action)) {
                url = CREATE_USER_CONTROLLER;

            } else if (CREATE_MANAGER.equals(action)) {
                url = CREATE_MANAGER_CONTROLLER;

            } else if (UPDATE_MANAGER.equals(action)) {
                url = UPDATE_MANAGER_CONTROLLER;

            } else if (SEARCH_EVENT.equals(action)) {
                url = SEARCH_CONTROLLER;
            } else if (EVENT_DETAIL.equals(action)) {
                url = DETAIL_CONTROLLER;
            } else if (CREATE_EVENT.equals(action)) {
                url = CREATE_EVENT_CONTROLLER;
            } else if (EVT_TYPE_AND_LOCALTION.equals(action)) {
                url = EVT_TYPE_AND_LOCALTION_CONTROLLER;
            } else if (LIST_EVENT.equals(action)) {
                url = LIST_EVENT_CONTROLLER;
            } else if (LIST_BLOG.equals(action)) {
                url = LIST_BLOG_CONTROLLER;
            } else if (BLOG_DETAIL.equals(action)) {
                url = BLOG_DETAIL_CONTROLLER;
            } else if (SEARCH_BLOG.equals(action)) {
                url = SEARCH_BLOG_CONTROLLER;

            } else if (APPROVE_EVENT.equals(action)) {
                url = APPROVE_EVENT_CONTROLLER;

            } else if (DECLINE_EVENT.equals(action)) {
                url = DECLINE_EVENT_CONTROLLER;

            } else if (FILTER_EVENT.equals(action)) {
                url = FILTER_EVENT_CONTROLLER;

            } else if (UPDATE_EVENT.equals(action)) {
                url = UPDATE_EVENT_CONTROLLER;

            } else if (DELETE_AN_EVENT.equals(action)) {
                url = DELETE_AN_EVENT_CONTROLLER;

            } else if (CREATE_BLOG.equals(action)) {
                url = CREATE_BLOG_CONTROLLER;

            } else if (UPDATE_BLOG.equals(action)) {
                url = UPDATE_BLOG_CONTROLLER;

            } else if (DELETE_A_BLOG.equals(action)) {
                url = DELETE_BLOG_CONTROLLER;

            } else if (SEARCH_EVENT_BY_ORG.equals(action)) {
                url = SEARCH_EVENT_BY_ORG_CONTROLLER;

            } else if (LIST_ORG_EVENT.equals(action)) {
                url = LIST_ORG_EVENT_CONTROLLER;

            } else if (COMMENT.equals(action)) {
                url = COMMENT_CONTROLLER;
            } else if (REPLY_COMMENT.equals(action)) {
                url = REPLY_COMMENT_CONTROLLER;

            } else if (DELETE_COMMENT.equals(action)) {
                url = DELETE_COMMENT_CONTROLLER;

            } else if (UPDATE_ADMIN_PROFILE.equals(action)) {
                url = UPDATE_ADMIN_PROFILE_CONTROLLER;

            } else if (ADMIN_PROFILE.equals(action)) {
                url = ADMIN_PROFILE_CONTROLLER;

            } else if (LIST_PARTICIPANTS.equals(action)) {
                url = LIST_PARTICIPANTS_CONTROLLER;

            } else if (LIST_LOCATION.equals(action)) {
                url = LIST_LOCATION_CONTROLLER;

            } else if (DELETE_LOCATION.equals(action)) {
                url = DELETE_LOCATION_CONTROLLER;

            } else if (UPDATE_LOCATION.equals(action)) {
                url = UPDATE_LOCATION_CONTROLLER;

            } else if (CREATE_LOCATION.equals(action)) {
                url = CREATE_LOCATION_CONTROLLER;

            } else if (SEARCH_LOCATION.equals(action)) {
                url = SEARCH_LOCATION_CONTROLLER;

            }

        } catch (Exception e) {
            log("Error at MainController" + e.toString());
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
