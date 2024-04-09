package controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarDAO;
import dao.FeedbackDAO;

/**
 * Servlet implementation class CarBasicInformationTab
 */
@WebServlet("/car-basic-infomation-tab")
public class CarBasicInformationTab extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CAR_BASIC_INFORMATION_TAB_PAGE = "views/car/car-basic-information-tab.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarBasicInformationTab() {
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
//		request.setAttribute("licensePlate", licensePlate);
		request.setAttribute("Car", carDao.getCar(licensePlate));
		request.setAttribute("RatingPoint", fDao.getRatingPoint(licensePlate));
		request.getRequestDispatcher(CAR_BASIC_INFORMATION_TAB_PAGE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
