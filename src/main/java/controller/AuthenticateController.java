package controller;

import com.fa.carrentalsystem.model.Profile;
import com.fa.carrentalsystem.model.User;
import com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException;
import dao.ProfileDAO;
import dao.UserDAO;
import utils.GmailUtils;
import utils.ValidatorUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.GeneralSecurityException;

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
                    response.sendRedirect("customer");
                    break;
                // Car Owner
                case 1:
                    response.sendRedirect("car-owner");
                    break;
            }
        } else {
            request.getRequestDispatcher("/views/account/user/login.jsp").forward(request, response);
        }
    }

    protected void doGet_Logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        response.sendRedirect("/Car_Rental_System");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("google-handler")) {
            doPost_GoogleHandler(request, response);
        } else if (action.equalsIgnoreCase("manual")) {
            doPost_ManualLogin(request, response);
        } else if (action.equalsIgnoreCase("register")) {
            try {
                doPost_Register(request, response);
            } catch (MessagingException | GeneralSecurityException | javax.mail.MessagingException ex) {
                log(ex.toString());
            }
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
        UserDAO userDAO = new UserDAO();
        ProfileDAO profileDAO = new ProfileDAO();
//        EncryptorUtils encryptor = new EncryptorUtils();
//
//        //Getting data from login page
        String email = request.getParameter("loginEmail").trim();
        String password = request.getParameter("loginPassword").trim();
//
//        //Encrypt password
//        String encryptedPW = encryptor.encrypt(password);
//
//        //Try to log in
        User user = userDAO.login(email, password);
//
        if (user == null) {
            request.setAttribute("notification", "Email or password wrong!\n");
            request.getRequestDispatcher("/views/account/user/login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("username", user.getName());
            session.setMaxInactiveInterval(60 * 60);
            Profile p = profileDAO.check(user.getEmail());
            if (p.getDateOfBirth() == null || p.getDrivingLicense() == null) {
                response.sendRedirect("userDetail?action=addProfile");
            } else {
                switch (user.getRoleId()) {
                    //Customer
                    case 0:
                        response.sendRedirect("customer");
                        break;
                    //CarOwner
                    case 1:
                        response.sendRedirect("car-owner");
                        break;
                }
            }
        }
    }

    protected void doPost_Register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, GeneralSecurityException, MessagingException,javax.mail.MessagingException {
        //init
        UserDAO ud = new UserDAO();
        ValidatorUtils vu = new ValidatorUtils();
        //get attributes for new user
        User temp = new User();
        GmailUtils gu = new GmailUtils();

        String name = request.getParameter("name").trim();
        String email = request.getParameter("registerEmail").trim();
        String phone = request.getParameter("phone").trim();
        String nationalID = request.getParameter("nationalId").trim();
        String password = request.getParameter("registerPassword").trim();
        String rePass = request.getParameter("confirmPassword").trim();
        String roleId = request.getParameter("role").trim();

        //validation
        boolean check = vu.EmailValidator(email) && vu.PasswordValidator(password);
        System.out.println(check);

        if (!password.equals(rePass) || ud.checkById(nationalID) != null) {
            check = false;
        }

        if (check) {
            if (ud.check(email) == null) {
                request.setAttribute("notify", "Registered successfully!");

                //add step 1
                temp.setName(name);
                temp.setEmail(email);
                temp.setPhone(phone);
                temp.setNationalId(nationalID);
                temp.setPassword(password);
                temp.setRoleId(Integer.parseInt(roleId));

                ud.save(temp);

                gu.sendEmail(temp.getEmail(), "Your account is ready", "Your account has been set.\nUse " + email + " to login.\nHave a good time with Car Rental ^^");
                response.sendRedirect(request.getContextPath());
            } else {
                String error = "Email [" + email + "] already existed !!";
                request.setAttribute("notify", error);
                request.getRequestDispatcher("/views/account/user/login.jsp").forward(request, response);
            }
        } else {
            String notif = "";
            if(!password.equals(rePass)){
                notif = "Confirm password not match !";
            }else if(ud.checkById(nationalID) != null){
                notif = "National ID already registered !";
            }
            request.setAttribute("notify", notif);
            request.getRequestDispatcher("/views/account/user/login.jsp").forward(request, response);
        }
    }
}
