package controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarDAO;
import dao.CarModelDAO;
import dao.FeedbackDAO;

/**
 * Servlet implementation class CarDetailTabController
 */
@WebServlet("/car-detail-tab")
public class CarDetailTabController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CAR_DETAIL_TAB_PAGE = "views/car/car-detail-tab.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarDetailTabController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String licensePlate = request.getParameter("licensePlate");
		CarDAO carDao = new CarDAO();
		CarModelDAO mDao = new CarModelDAO();
//		request.setAttribute("licensePlate", licensePlate);
		request.setAttribute("Car", carDao.getCar(licensePlate));
		request.setAttribute("listFunctions", mDao.getFunctions());
		request.setAttribute("functionsOfCar", mDao.getFunction(licensePlate));
		request.getRequestDispatcher(CAR_DETAIL_TAB_PAGE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
