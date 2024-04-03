package controller;

import com.fa.carrentalsystem.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UserAuthenticationController", urlPatterns = "/auth")
public class AuthenticateController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("login")) {
            doGet_Login(request, response);
        } else if (action.equalsIgnoreCase("logout")) {
            doGet_Logout(request, response);
        }
    }

    protected void doGet_Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Init
        HttpSession session = request.getSession();
        User user;

        // If user has already login, then bypass the login page to get into their specific page.
        if (session.getAttribute("user") != null) {
            user = (User) session.getAttribute("user");
            switch (user.getRoleId()) {
                // Customer
                case 0:
                    response.sendRedirect("");
                    break;
                // Car Owner
                case 1:
                    response.sendRedirect("");
                    break;
            }
        } else {
            request.getRequestDispatcher("/views/account/user/login.jsp").forward(request, response);
        }
    }

    protected void doGet_Logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        response.sendRedirect("");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("google-handler")) {
            doPost_GoogleHandler(request, response);
        } else if (action.equalsIgnoreCase("manual")) {
            doPost_ManualLogin(request, response);
        }
    }

    protected void doPost_GoogleHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        //Get credential from google
//        String token = request.getParameter("credential");
//        UserDAO userDAO = new UserDAOImpl();
//
//        try {
//            //Get user info with token provided by Google
//            GoogleUser googleUser = GoogleUtils.getUserInfo(token);
//
//            //Checking user through db
//            User user = userDAO.check(googleUser != null ? googleUser.getEmail() : null);
//            if (user == null) {
//                String notification = "There is something wrong with your account! Please try again.";
//                request.setAttribute("notification", notification);
//                request.getRequestDispatcher("/views/account/login.jsp").forward(request, response);
//            } else {
//                HttpSession session = request.getSession();
//                session.setAttribute("user", user);
//                session.setMaxInactiveInterval(60 * 60);
//                switch (user.getRoleId()) {
//                    case 0:
//                        response.sendRedirect("manageCourse");
//                        break;
//                    case 1:
//                        response.sendRedirect("classUser");
//                        break;
//                    case 2:
//                        response.sendRedirect("courseUser");
//                        break;
//                }
//            }
//        } catch (GeneralSecurityException ex) {
//            System.out.println(ex.getMessage());
//        }
    }

    protected void doPost_ManualLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        //init
//        UserDAO userDAO = new UserDAOImpl();
//        ProfileDAO profileDAO = new ProfileDAOImpl();
//        EncryptorUtils encryptor = new EncryptorUtils();
//
//        //Getting data from login page
//        String username = request.getParameter("username").trim();
//        String password = request.getParameter("password").trim();
//
//        //Encrypt password
//        String encryptedPW = encryptor.encrypt(password);
//
//        //Try to log in
//        User user = userDAO.login(username, encryptedPW);
//
//        if (user == null) {
//            request.setAttribute("notification", "Username or password wrong!\n");
//            request.getRequestDispatcher("/views/account/login.jsp").forward(request, response);
//        } else {
//            HttpSession session = request.getSession();
//            session.setAttribute("user", user);
//            session.setMaxInactiveInterval(60 * 60);
//            if (!profileDAO.check(user.getUserId())) {
//                response.sendRedirect("user?action=addProf");
//            } else {
//                switch (user.getRoleId()) {
//                    case 0:
//                        response.sendRedirect("manageCourse");
//                        break;
//                    case 1:
//                        response.sendRedirect("classUser");
//                        break;
//                    case 2:
//                        response.sendRedirect("courseUser");
//                        break;
//                }
//            }
//        }
    }
}
