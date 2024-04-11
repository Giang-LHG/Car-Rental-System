package controller;

import com.fa.carrentalsystem.model.Profile;
import com.fa.carrentalsystem.model.User;
import dao.ProfileDAO;
import utils.UserProfileFileUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(name = "UserDetailController", urlPatterns = "/userDetail")
public class UserDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        req.setCharacterEncoding("UTF-8");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
//        BufferedReader reader = request.getReader();
//        String str = "";
//        while ((str = reader.readLine()) != null) {
//            System.out.println(str);
//        }

        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("addProf")) {
            String dob = request.getParameter("dateOfBirth");
            String address = request.getParameter("location1") + " " +
                    request.getParameter("location2") + " " +
                    request.getParameter("location3").trim() + " " +
                    request.getParameter("detailLocation");
            System.out.println(address);
            doPost_AddProfile(request, resp, dob.trim(), address.trim());
        } else if (action.equalsIgnoreCase("addLicense")) {
            HttpSession session = request.getSession();

            User user = (User) session.getAttribute("user");
            String userNationalId = user.getNationalId();

            String uploadDir = "media/images/" + userNationalId;
            String drivingLicense = UserProfileFileUtils.uploadUserImage(uploadDir,request);
            doPost_AddLicense(request,resp,drivingLicense);
        }

    }

    protected void doPost_AddProfile(HttpServletRequest request, HttpServletResponse response, String dob, String address) throws IOException, ServletException {
        ProfileDAO pd = new ProfileDAO();
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        String userNationalId = user.getNationalId();

        pd.addProf(dob, address, userNationalId);

//        request.getSession().setAttribute("success", "Profile completed! Please enjoy Car Rental.");
//        response.sendRedirect("/Car_Rental_System");
    }

    protected void doPost_AddLicense(HttpServletRequest request, HttpServletResponse response,String drivingLicense) throws IOException, ServletException {
        ProfileDAO pd = new ProfileDAO();
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        String userNationalId = user.getNationalId();

        pd.addLicense(drivingLicense, userNationalId);

    }
}
