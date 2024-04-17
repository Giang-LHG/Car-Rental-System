package controller;

import com.fa.carrentalsystem.model.Booking;
import dao.BookingDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewListOfBookingCar", urlPatterns = "/list-booking")
public class ViewListOfBookingCar  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String customerId = req.getParameter("id");
        BookingDAO dao = new BookingDAO();
        List<Booking> listBK = dao.getAllBooking(customerId);

        req.setAttribute("listBK", listBK);
        req.getRequestDispatcher("views/account/user/customer/listOfBookingCar.jsp").forward(req,resp);
    }



    @Override
    public void init() throws ServletException {

    }
}
