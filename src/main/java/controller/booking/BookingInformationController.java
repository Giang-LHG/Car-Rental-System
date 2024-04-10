package controller.booking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingInformationController
 */
@WebServlet("/booking-information")
public class BookingInformationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String BOOKING_INFORMATION_PAGE="/views/booking/booking-information.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingInformationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher(BOOKING_INFORMATION_PAGE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher(BOOKING_INFORMATION_PAGE).forward(request, response);
	}

}
