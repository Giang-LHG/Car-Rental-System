package controller.car;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fa.carrentalsystem.model.Car;
import com.fa.carrentalsystem.model.CarFunctions;
import com.fa.carrentalsystem.model.CarModel;
import com.fa.carrentalsystem.model.CarTou;
import com.fa.carrentalsystem.model.User;

import dao.CarDAO;
import dao.CarModelDAO;

/**
 * Servlet implementation class AddACar
 */
@WebServlet("/add-a-car")
public class AddACar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ADD_A_CAR_PAGE = "views/car/add-car/add-a-car.jsp";
    private static final String STEP_1 = "views/car/add-car/add-a-car-step-1.jsp";
    private static final String STEP_2 = "views/car/add-car/add-a-car-step-2.jsp";
    private static final String STEP_3 = "views/car/add-car/add-a-car-step-3.jsp";
    private static final String STEP_4 = "views/car/add-car/add-a-car-step-4.jsp";
    private static final String CAR_OWNER_HOME_PAGE = "views/account/user/carOwner/homePageAsCarOwner.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddACar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String step = request.getParameter("step");
		CarModelDAO dao = new CarModelDAO();
		if (step==null) {
			request.getRequestDispatcher(ADD_A_CAR_PAGE).forward(request, response);
		}else {
			switch (step) {
			case "1":
				String licensePlate = request.getParameter("licensePlate");
				request.setAttribute("licensePlate", licensePlate);
				String year = request.getParameter("productionYear");
				request.setAttribute("currentYear", year);
				String brandId = request.getParameter("brand");
				if (brandId==null) brandId="";
				request.setAttribute("brands", dao.getBrand());
				request.setAttribute("brandId", brandId);
				String modelId = request.getParameter("model");
				if (modelId==null) modelId="";
				request.setAttribute("modelId", modelId);
				String colorId = request.getParameter("color");
				if (colorId==null) colorId="";
				request.setAttribute("colorId", colorId);
				String seatId = request.getParameter("seats");
				if (seatId==null) seatId="";
				request.setAttribute("seatId", seatId);
				//check if form is loaded 
				if (licensePlate==null) {
					request.getRequestDispatcher(STEP_1).forward(request, response);
				}else {
					//check if user choose brand
					if (!brandId.equals("")) {
						request.setAttribute("models", dao.getModel(Integer.parseInt(brandId)));
						//check if user choose model
						if (!modelId.equals("")) {
							request.setAttribute("colors", dao.getColor(Integer.parseInt(modelId)));
							request.setAttribute("seats", dao.getSeat(Integer.parseInt(modelId)));
						}
					}
					request.getRequestDispatcher(STEP_1).forward(request, response);
				}
				break;
			case "2":
				request.setAttribute("listFunctions", dao.getFunctions());
				request.getRequestDispatcher(STEP_2).forward(request, response);
				break;
			case "3":
				request.setAttribute("listTOU", dao.getTOU());
				request.getRequestDispatcher(STEP_3).forward(request, response);
				break;
			case "4":
				request.getRequestDispatcher(STEP_4).forward(request, response);
				break;

			default:
				request.getRequestDispatcher(ADD_A_CAR_PAGE).forward(request, response);
				break;
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String licensePlate = request.getParameter("licensePlate");
		String year = request.getParameter("productionYear");
		String brandId = request.getParameter("brand");
		String modelId = request.getParameter("model");
		String colorId = request.getParameter("color");
		String seatId = request.getParameter("seats");
		String transmission = request.getParameter("transmission");
		String fuel = request.getParameter("fuel");
		String mileage = request.getParameter("mileage");
		String province = request.getParameter("location1");
		String district = request.getParameter("location2");
		String ward = request.getParameter("location3");
		String detailLocation = request.getParameter("detailLocation");
		String fullLocation = province+" "+district+" "+ward+" "+detailLocation;
		String fuelConsumption = request.getParameter("fuel-consumption");
		String description = request.getParameter("description");
		String[] functions = request.getParameterValues("functions");
		String basePrice = request.getParameter("base-price");
		String deposit = request.getParameter("deposit");
		String[] tous = request.getParameterValues("tou");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String ownerId = user.getNationalId();
		Car car = new Car(null, licensePlate, 
				new CarModel(Integer.parseInt(brandId),null, null, null),
				new CarModel(Integer.parseInt(modelId),null, null, null), 
				new CarModel(Integer.parseInt(colorId),null, null, null), 
				new CarModel(Integer.parseInt(seatId),null, null, null), 
				Integer.parseInt(year), 
				Boolean.parseBoolean(transmission), 
				Boolean.parseBoolean(fuel), 
				Integer.parseInt(mileage), 
				Integer.parseInt(fuelConsumption), 
				Double.parseDouble(basePrice), 
				Double.parseDouble(deposit), 
				fullLocation, description, null, ownerId);
		CarDAO dao = new CarDAO();
		if (dao.addCar(car)) {
			for (String item : functions) {
				CarFunctions function = new CarFunctions(licensePlate, Integer.parseInt(item));
				dao.addFunctions(function);
			}
			for (String item : tous) {
				CarTou tou = new CarTou(licensePlate, Integer.parseInt(item));
				dao.addTou(tou);
			}
			request.getRequestDispatcher(CAR_OWNER_HOME_PAGE).forward(request,response);
		}
		
	}

}
