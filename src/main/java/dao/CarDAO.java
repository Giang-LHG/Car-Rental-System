package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import com.fa.carrentalsystem.model.Car;
import com.fa.carrentalsystem.model.CarModel;

import utils.DBUtils;

public class CarDAO {
	private Car getCarFromResultSet(ResultSet rs) throws SQLException{
	    String name = rs.getString("name");
	    String licensePlate = rs.getString("license_plate");
	    CarModel brand = new CarModel(rs.getInt("brand_id"), rs.getString("brand"), 0, null);
	    CarModel model = new CarModel(rs.getInt("model_id"), rs.getString("model"), 0, null);
	    CarModel color = new CarModel(rs.getInt("color_id"), rs.getString("color"), 0, null);
	    CarModel numberOfSeat = new CarModel(rs.getInt("number_of_seats_id"), rs.getString("seat"), 0, null);
	    int productionYear = rs.getInt("production_year");
	    boolean transmissionType = rs.getBoolean("transmission_type");
	    boolean fuelType = rs.getBoolean("fuel_type");
	    int mileage = rs.getInt("mileage");
	    int fuelConsumption = rs.getInt("fuel-consumption");
	    Double basePrice = rs.getDouble("base_price");
	    Double deposit = rs.getDouble("deposit");
	    String address = rs.getString("address");
	    String descriptions = rs.getString("description");
	    int additionalFunctionId = rs.getInt("additional_funtion_id");
	    int termOfUseId = rs.getInt("term_of_use_id");
	    String images = rs.getString("images");
	    String ownerId = rs.getString("owner_id");
	    Car car = new Car(name, licensePlate, brand, model, color, numberOfSeat, productionYear, transmissionType, fuelType, mileage, fuelConsumption, basePrice, deposit, address, descriptions, additionalFunctionId, termOfUseId, images, ownerId);
        return car;
    }
	public Car getCar(String licensePlate) {
        String sql = "SELECT [Car].[name]\r\n"
        		+ ",[license_plate]\r\n"
        		+ ",[brand_id]\r\n"
        		+ ",[model_id]\r\n"
        		+ ",[color_id]\r\n"
        		+ ",[number_of_seats_id]\r\n"
        		+ ",[production_year]\r\n"
        		+ ",[transmission_type]\r\n"
        		+ ",[fuel_type]\r\n"
        		+ ",[mileage]\r\n"
        		+ ",[fuel-consumption]\r\n"
        		+ ",[base_price]\r\n"
        		+ ",[deposit]\r\n"
        		+ ",[address]\r\n"
        		+ ",[description]\r\n"
        		+ ",[additional_funtion_id]\r\n"
        		+ ",[term_of_use_id]\r\n"
        		+ ",[images]\r\n"
        		+ ",[owner_id]\r\n"
        		+ ",cm1.[name][brand],cm2.[name][model],cm3.[name][color],cm3.[name][seat]\r\n"
        		+ "FROM [CAR_RENTAL].[dbo].[Car]\r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm1 ON cm1.id=[Car].[brand_id] \r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm2 ON cm2.id=[Car].[model_id] \r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm3 ON cm3.id=[Car].[color_id] \r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm4 ON cm4.id=[Car].[number_of_seats_id] \r\n"
        		+ "WHERE [license_plate] = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            ps.setString(1, licensePlate);
            rs = ps.executeQuery();
            while (rs.next()) {
                return getCarFromResultSet(rs);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
	public static void main(String[] args) {
		CarDAO dao = new CarDAO();
		System.out.println(dao.getCar("29A-1234"));
	}
}
