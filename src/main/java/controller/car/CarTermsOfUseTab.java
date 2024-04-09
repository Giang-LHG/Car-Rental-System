package controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarDAO;
import dao.CarModelDAO;

/**
 * Servlet implementation class CarTermsOfUseTab
 */
@WebServlet("/car-terms-of-use-tab")
public class CarTermsOfUseTab extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CAR_TOU_TAB_PAGE = "views/car/car-terms-of-use-tab.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarTermsOfUseTab() {
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
		request.setAttribute("listTOU", mDao.getTOU());
		request.setAttribute("TOUOfCar", mDao.getTOU(licensePlate));
		request.getRequestDispatcher(CAR_TOU_TAB_PAGE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
