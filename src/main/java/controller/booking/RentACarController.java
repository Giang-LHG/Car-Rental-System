package controller.booking;

import com.fa.carrentalsystem.model.Booking;
import com.fa.carrentalsystem.model.Car;
import dao.BookingDAO;
import dao.CarDAO;

import java.io.IOException;
import java.time.LocalDateTime;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RentACar
 */
@WebServlet("/rent-a-car")
public class RentACarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String BOOKING_A_CAR_PAGE = "/views/booking/booking-a-car.jsp"; 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("rentCar")){
			doGet_RentCar(request,response);
		}
	}

	private void doGet_RentCar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CarDAO cd = new CarDAO();
		BookingDAO bd = new BookingDAO();

		String licensePlate = request.getParameter("licensePlate");
		Car car = cd.getCar(licensePlate);
		int noOfRides = bd.getRides(licensePlate);
		boolean status = bd.getStatus(licensePlate);

		request.setAttribute("car",car);
		request.setAttribute("rides",noOfRides);
		request.setAttribute("status",status);
		request.getRequestDispatcher(BOOKING_A_CAR_PAGE).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("confirmBook")){
			doPost_ConfirmBook(request,response);
		}
	}

	private void doPost_ConfirmBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookingDAO bd = new BookingDAO();

		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String paymentMethod = request.getParameter("paymentMethod");
		String customerId = request.getParameter("customerId");
		String licensePlate = request.getParameter("licensePlate");

		Booking b = new Booking(LocalDateTime.parse(startDate),LocalDateTime.parse(endDate),null,Integer.parseInt(paymentMethod),1,customerId,licensePlate);

		bd.createBooking(b);
	}

}
