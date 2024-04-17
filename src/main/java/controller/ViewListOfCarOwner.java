package controller;

import com.fa.carrentalsystem.model.Booking;
import com.fa.carrentalsystem.model.Car;
import dao.BookingDAO;
import dao.CarDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewListOfCarOwner", urlPatterns = "/list-carowner")
public class ViewListOfCarOwner extends HttpServlet  {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String carOwnerId = req.getParameter("id");
        CarDAO dao = new CarDAO();
        List<Car> listCO = dao.getCarOwner(carOwnerId);

        req.setAttribute("listCO", listCO);
        req.getRequestDispatcher("views/account/user/carOwner/listOfCarOwner.jsp").forward(req,resp);
    }
    @Override
    public void init() throws ServletException {
        super.init();
    }
}
