package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import com.fa.carrentalsystem.model.Car;
import com.fa.carrentalsystem.model.CarModel;

import utils.DBUtils;

public class CarDAO {
	//thu
	private Car getDetailCarFromResultSet(ResultSet rs) throws SQLException{
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
	//thu
	private Car getCarFromResultSet(ResultSet rs) throws SQLException{
	    String licensePlate = rs.getString("license_plate");
	    CarModel brand = new CarModel(rs.getInt("brand_id"), rs.getString("brand"), 0, null);
	    CarModel model = new CarModel(rs.getInt("model_id"), rs.getString("model"), 0, null);
	    int productionYear = rs.getInt("production_year");
	    Double basePrice = rs.getDouble("base_price");
	    Double deposit = rs.getDouble("deposit");
	    String address = rs.getString("address");
	    String images = rs.getString("images");
	    Car car = new Car(licensePlate, brand, model, productionYear, basePrice, deposit, address, images);
	    return car;
    }
	//thu
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
        		+ ",[Car].[address]\r\n"
        		+ ",[description]\r\n"
        		+ ",[additional_funtion_id]\r\n"
        		+ ",[term_of_use_id]\r\n"
        		+ ",[images]\r\n"
        		+ ",[owner_id]\r\n"
        		+ ",cm1.[name][brand],\r\n"
        		+ "cm2.[name][model],\r\n"
        		+ "cm3.[name][color],\r\n"
        		+ "cm4.[name][seat],\r\n"
        		+ "u.name[userName]\r\n"
        		+ "FROM [CAR_RENTAL].[dbo].[Car]\r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm1 ON cm1.id=[Car].[brand_id] \r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm2 ON cm2.id=[Car].[model_id] \r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm3 ON cm3.id=[Car].[color_id] \r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm4 ON cm4.id=[Car].[number_of_seats_id] \r\n"
        		+ "JOIN [CAR_RENTAL].[dbo].[User] u ON u.national_id=[Car].[owner_id]\r\n"
        		+ "WHERE [license_plate] = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            ps.setString(1, licensePlate);
            rs = ps.executeQuery();
            while (rs.next()) {
                return getDetailCarFromResultSet(rs);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

	//thu
	public ArrayList<Car> searchCar(String address,LocalDateTime pickUpDate,LocalDateTime dropOffDate, int offset, int fetch) {
        ArrayList<Car> list = new ArrayList<Car>();
		String sql = "SELECT [Car].[license_plate]\r\n"
				+ ",[brand_id]\r\n"
				+ ",[model_id]\r\n"
				+ ",[production_year]\r\n"
				+ ",[base_price]\r\n"
				+ ",[deposit]\r\n"
				+ ",[address]\r\n"
				+ ",[images]\r\n"
				+ ",cm1.[name][brand]\r\n"
				+ ",cm2.[name][model]\r\n"
				+ "FROM [CAR_RENTAL].[dbo].[Car]\r\n"
				+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm1 ON cm1.id=[Car].[brand_id] \r\n"
				+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm2 ON cm2.id=[Car].[model_id] \r\n"
				+ "LEFT JOIN [CAR_RENTAL].[dbo].[Booking] b ON b.license_plate=[Car].license_plate\r\n"
				+ "WHERE address LIKE ?\r\n"
				+ "AND Car.license_plate NOT IN \r\n"
				+ "(SELECT [Car].[license_plate]\r\n"
				+ "FROM [CAR_RENTAL].[dbo].[Car]\r\n"
				+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm1 ON cm1.id=[Car].[brand_id] \r\n"
				+ "JOIN [CAR_RENTAL].[dbo].[Car Model] cm2 ON cm2.id=[Car].[model_id] \r\n"
				+ "LEFT JOIN [CAR_RENTAL].[dbo].[Booking] b ON b.license_plate=[Car].license_plate\r\n"
				+ "WHERE (end_date_time>=? AND end_date_time<=?)\r\n"
				+ "OR (start_date_time>=? AND start_date_time<=?)\r\n"
				+ "group by [Car].[license_plate],[Car].[brand_id],[Car].[model_id] ,[production_year]\r\n"
				+ ",[base_price]\r\n"
				+ ",[deposit]\r\n"
				+ ",[address]\r\n"
				+ ",[images],cm1.[name],cm2.[name])\r\n"
				+ "group by [Car].[license_plate],[Car].[brand_id],[Car].[model_id] ,[production_year]\r\n"
				+ ",[base_price]\r\n"
				+ ",[deposit]\r\n"
				+ ",[address]\r\n"
				+ ",[images],cm1.[name],cm2.[name]\r\n"
				+ "ORDER BY [Car].[license_plate]\r\n"
				+ "OFFSET ? ROWS\r\n"
				+ "FETCH NEXT ? ROW ONLY\r\n";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            ps.setString(1, "%"+address+"%");
            ps.setString(2, convertDate(pickUpDate));
            ps.setString(3, convertDate(dropOffDate));
            ps.setString(4, convertDate(pickUpDate));
            ps.setString(5, convertDate(dropOffDate));
            ps.setInt(6, offset);
            ps.setInt(7, fetch);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarFromResultSet(rs));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }
	//thu
	private String convertDate(LocalDateTime date) {
		return date.toString().replace("T", " ");
	}
	public static void main(String[] args) {
		CarDAO dao = new CarDAO();
		DateTimeFormatter f = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime dateTime = LocalDateTime.from(f.parse("2024-04-08 00:00:00"));
		LocalDateTime dateTime2 = LocalDateTime.from(f.parse("2024-04-09 00:00:00"));
		System.out.println(dao.searchCar("",dateTime, dateTime2, 0, 5));
	}
}
