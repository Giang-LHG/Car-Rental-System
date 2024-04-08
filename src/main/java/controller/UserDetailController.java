package controller;

import com.fa.carrentalsystem.model.Profile;
import com.fa.carrentalsystem.model.User;
import dao.ProfileDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserDetailController", urlPatterns = "/userDetail")
public class UserDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        User u = (User) req.getSession(false).getAttribute("user");
        if (u != null) {
            if (action.equalsIgnoreCase("profile")) {
                //doGet_AddProfile(req, resp);
            } else if (action.equalsIgnoreCase("addProfile")) {
                doGet_AddProfile(req, resp);
            }
        }

    }

    protected void doGet_AddProfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user setting - edit profile page
        request.getRequestDispatcher("/views/account/user/addProfile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("addProf")) {
            doPost_AddProfile(req, resp);
        }
    }

    protected void doPost_AddProfile(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ProfileDAO pd = new ProfileDAO();
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        String userNationalId = user.getNationalId();

        String dob = request.getParameter("dateOfBirth");
        String drivingLicense = request.getParameter("drivingLicence");
        String address = request.getParameter("location1") + " " +
                request.getParameter("location2") + " " +
                request.getParameter("location3") + " " +
                request.getParameter("detailLocation");

        pd.addProf(dob, address, drivingLicense, userNationalId);

        request.getSession().setAttribute("success", "Profile completed! Please enjoy Car Rental.");
        response.sendRedirect("/Car_Rental_System");
    }
}
