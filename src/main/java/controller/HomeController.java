package controller;

import com.fa.carrentalsystem.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "HomeController", urlPatterns = "/")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            doGet_Init(req,resp);
        }
    }

    protected void doGet_Init(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
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
        } else request.getRequestDispatcher("views/home.jsp").forward(request, response);
    }

}


