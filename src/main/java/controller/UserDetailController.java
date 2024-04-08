package controller;

import com.fa.carrentalsystem.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserDetailController", urlPatterns = "/userDetail")
public class UserDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        User u = (User) req.getSession(false).getAttribute("user");
        if (u != null) {
            if (action.equalsIgnoreCase("profile")) {
                //doGet_AddProfile(req, resp);
            } else if(action.equalsIgnoreCase("addProfile")){
                doGet_AddProfile(req,resp);
            }
        }

    }

    protected void doGet_AddProfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user setting - edit profile page
        request.getRequestDispatcher("/views/account/user/addProfile.jsp").forward(request, response);
    }

}
