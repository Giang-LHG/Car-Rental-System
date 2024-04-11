package controller.car;


import com.fa.carrentalsystem.model.Car;
import dao.CarDAO;
import dao.CarModelDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

@WebServlet("/search-car")
public class SearchCarController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String location = request.getParameter("location");
        String pickUpDay = request.getParameter("pickupday");
        String pickUpTime = request.getParameter("pickuptime");
        String dropOffDay = request.getParameter("dropoffday");
        String dropOffTime = request.getParameter("dropofftime");
        if(pickUpDay == null || pickUpTime == null || dropOffDay == null || dropOffTime == null){
            request.getRequestDispatcher("views/search/searchCarResultDetail.jsp").forward(request, response);
        }
        CarDAO carDao = new CarDAO();
        DateTimeFormatter f = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        LocalDateTime pickUp  = LocalDateTime.from(f.parse(pickUpDay +" "+ pickUpTime));
        LocalDateTime dropOff = LocalDateTime.from(f.parse(dropOffDay +" "+ dropOffTime));
        ArrayList<Car> listCar = carDao.searchCar(location, pickUp, dropOff, 0, 5);

        request.setAttribute("listC", listCar);
        request.getRequestDispatcher("views/search/searchCarResultDetail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
