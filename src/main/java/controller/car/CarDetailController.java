package controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookingDAO;
import dao.CarDAO;
import dao.FeedbackDAO;

/**
 * Servlet implementation class CarDetailController
 */
@WebServlet("/car-detail")
public class CarDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CAR_DETAIL_PAGE = "views/car/car-details.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String licensePlate = request.getParameter("licensePlate");
		CarDAO carDao = new CarDAO();
		FeedbackDAO fDao = new FeedbackDAO();
		BookingDAO bDao = new BookingDAO();
//		request.setAttribute("licensePlate", licensePlate);
		request.setAttribute("Car", carDao.getCar(licensePlate));
		request.setAttribute("RatingPoint", fDao.getRatingPoint(licensePlate));
		request.setAttribute("rides", bDao.getRides(licensePlate));
		request.setAttribute("status", bDao.getStatus(licensePlate));
		request.getRequestDispatcher(CAR_DETAIL_PAGE+"?licensePlate="+licensePlate).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
