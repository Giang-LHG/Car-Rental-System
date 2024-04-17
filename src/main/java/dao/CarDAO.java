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
import java.util.List;

import com.fa.carrentalsystem.model.Car;
import com.fa.carrentalsystem.model.CarFunctions;
import com.fa.carrentalsystem.model.CarModel;
import com.fa.carrentalsystem.model.CarTou;

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
		String name = rs.getString("name");
	    CarModel brand = new CarModel(rs.getInt("brand_id"), rs.getString("brand"), 0, null);
	    CarModel model = new CarModel(rs.getInt("model_id"), rs.getString("model"), 0, null);
	    int productionYear = rs.getInt("production_year");
	    Double basePrice = rs.getDouble("base_price");
	    Double deposit = rs.getDouble("deposit");
	    String address = rs.getString("address");
	    String images = rs.getString("images");
	    Car car = new Car(licensePlate, name, brand, model, productionYear, basePrice, deposit, address, images);
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

	public List<Car> getCarOwner(String owner_id) {
		List<Car> listC = new ArrayList<>();
		String sql = "SELECT [Car].[name] \n" +
				"        \t\t  ,[license_plate] \n" +
				"        \t\t  ,[brand_id] \n" +
				"        \t\t  ,[model_id] \n" +
				"        \t\t  ,[color_id] \n" +
				"        \t\t  ,[number_of_seats_id] \n" +
				"        \t\t  ,[production_year] \n" +
				"        \t\t  ,[transmission_type] \n" +
				"        \t\t  ,[fuel_type] \n" +
				"        \t\t  ,[mileage] \n" +
				"        \t\t  ,[fuel-consumption] \n" +
				"        \t\t  ,[base_price] \n" +
				"        \t\t  ,[deposit] \n" +
				"        \t\t  ,[Car].[address] \n" +
				"        \t\t  ,[description] \n" +
				"        \t\t  ,[additional_funtion_id] \n" +
				"        \t\t  ,[term_of_use_id] \n" +
				"        \t\t  ,[images] \n" +
				"        \t\t  ,[owner_id] \n" +
				"        \t\t  ,cm1.[name][brand], \n" +
				"        \t\t  cm2.[name][model], \n" +
				"        \t\t  cm3.[name][color], \n" +
				"        \t\t  cm4.[name][seat], \n" +
				"        \t\t  u.name[userName] \n" +
				"        \t\t  FROM [CAR_RENTAL].[dbo].[Car] \n" +
				"        \t\t  JOIN [CAR_RENTAL].[dbo].[Car Model] cm1 ON cm1.id=[Car].[brand_id]  \n" +
				"        \t\t  JOIN [CAR_RENTAL].[dbo].[Car Model] cm2 ON cm2.id=[Car].[model_id]  \n" +
				"        \t\t  JOIN [CAR_RENTAL].[dbo].[Car Model] cm3 ON cm3.id=[Car].[color_id]  \n" +
				"        \t\t  JOIN [CAR_RENTAL].[dbo].[Car Model] cm4 ON cm4.id=[Car].[number_of_seats_id]  \n" +
				"        \t\t  JOIN [CAR_RENTAL].[dbo].[User] u ON u.national_id=[Car].[owner_id] \n" +
				"        \t\t  WHERE [owner_id]  = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;

		try (Connection con = DBUtils.getConnection()) {
			ps = con.prepareStatement(sql);
			ps.setString(1, owner_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				listC.add(getDetailCarFromResultSet(rs));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return listC;
	}

	//thu
	public ArrayList<Car> searchCar(String address,LocalDateTime pickUpDate,LocalDateTime dropOffDate, int offset, int fetch) {
        ArrayList<Car> list = new ArrayList<Car>();
		String sql = "SELECT [Car].[license_plate],\n" +
				"\t\t\t\t  [Car].[name]\n" +
				"\t\t\t\t ,[brand_id]\n" +
				"\t\t\t\t ,[model_id]\n" +
				"\t\t\t\t ,[production_year]\n" +
				"\t\t\t\t ,[base_price]\n" +
				"\t\t\t\t ,[deposit]\n" +
				"\t\t\t\t ,[address]\n" +
				"\t\t\t\t ,[images]\n" +
				"\t\t\t\t ,cm1.[name][brand]\n" +
				"\t\t\t\t ,cm2.[name][model]\n" +
				"\t\t\t\t FROM [CAR_RENTAL].[dbo].[Car]\n" +
				"\t\t\t\t JOIN [CAR_RENTAL].[dbo].[Car Model] cm1 ON cm1.id=[Car].[brand_id] \n" +
				"\t\t\t\t JOIN [CAR_RENTAL].[dbo].[Car Model] cm2 ON cm2.id=[Car].[model_id] \n" +
				"\t\t\t\t LEFT JOIN [CAR_RENTAL].[dbo].[Booking] b ON b.license_plate=[Car].license_plate\n" +
				"\t\t\t\t WHERE address LIKE ? \n" +
				"\t\t\t\t AND Car.license_plate NOT IN \n" +
				"\t\t\t\t (SELECT [Car].[license_plate]\n" +
				"\t\t\t\t FROM [CAR_RENTAL].[dbo].[Car]\n" +
				"\t\t\t\t JOIN [CAR_RENTAL].[dbo].[Car Model] cm1 ON cm1.id=[Car].[brand_id] \n" +
				"\t\t\t\t JOIN [CAR_RENTAL].[dbo].[Car Model] cm2 ON cm2.id=[Car].[model_id] \n" +
				"\t\t\t\t LEFT JOIN [CAR_RENTAL].[dbo].[Booking] b ON b.license_plate=[Car].license_plate\n" +
				"\t\t\t\t WHERE (end_date_time>=? AND end_date_time<=?)\n" +
				"\t\t\t\t OR (start_date_time>=? AND start_date_time<=?)\n" +
				"\t\t\t\t group by [Car].[license_plate],[Car].[name],[Car].[brand_id],[Car].[model_id] ,[production_year]\n" +
				"\t\t\t\t ,[base_price]\n" +
				"\t\t\t\t ,[deposit]\n" +
				"\t\t\t\t ,[address]\n" +
				"\t\t\t\t ,[images],cm1.[name],cm2.[name])\n" +
				"\t\t\t\t group by [Car].[license_plate],[Car].[name],[Car].[brand_id],[Car].[model_id] ,[production_year]\n" +
				"\t\t\t\t ,[base_price]\n" +
				"\t\t\t\t ,[deposit]\n" +
				"\t\t\t\t ,[address]\n" +
				"\t\t\t\t ,[images],cm1.[name],cm2.[name]\n" +
				"\t\t\t\t ORDER BY [Car].[license_plate]\n" +
				"\t\t\t\t OFFSET ? ROWS\n" +
				"\t\t\t\t FETCH NEXT ? ROW ONLY";
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
	public Boolean addCar(Car car) {
        String sql = "\r\n"
        		+ "INSERT INTO [dbo].[Car]\r\n"
        		+ "           ([name]\r\n"
        		+ "           ,[license_plate]\r\n"
        		+ "           ,[brand_id]\r\n"
        		+ "           ,[model_id]\r\n"
        		+ "           ,[color_id]\r\n"
        		+ "           ,[number_of_seats_id]\r\n"
        		+ "           ,[production_year]\r\n"
        		+ "           ,[transmission_type]\r\n"
        		+ "           ,[fuel_type]\r\n"
        		+ "           ,[mileage]\r\n"
        		+ "           ,[fuel-consumption]\r\n"
        		+ "           ,[base_price]\r\n"
        		+ "           ,[deposit]\r\n"
        		+ "           ,[address]\r\n"
        		+ "           ,[description]\r\n"
        		+ "           ,[additional_funtion_id]\r\n"
        		+ "           ,[term_of_use_id]\r\n"
        		+ "           ,[images]\r\n"
        		+ "           ,[owner_id])\r\n"
        		+ "     VALUES\r\n"
        		+ "           (null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            ps.setString(1, car.getLicensePlate());
            ps.setString(2, car.getBrand().getId()+"");
            ps.setString(3, car.getModel().getId()+"");
            ps.setString(4, car.getColor().getId()+"");
            ps.setString(5, car.getNumberOfSeat().getId()+"");
            ps.setString(6, car.getProductionYear()+"");
            ps.setString(7, car.isTransmissionType()+"");
            ps.setString(8, car.isFuelType()+"");
            ps.setString(9, car.getMileage()+"");
            ps.setString(10, car.getFuelConsumption()+"");
            ps.setString(11, car.getBasePrice()+"");
            ps.setString(12, car.getDeposit()+"");
            ps.setString(13, car.getAddress());
            ps.setString(14, car.getDescriptions());
            ps.setString(15, "0");
            ps.setString(16, "0");
            ps.setString(17, car.getImages());
            ps.setString(18, car.getOwnerId());
            ps.execute();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
	//thu
		public Boolean addFunctions(CarFunctions function) {
	        String sql = "INSERT INTO [dbo].[Cars_Functions]\r\n"
	        		+ "           ([car_id]\r\n"
	        		+ "           ,[function_id])\r\n"
	        		+ "     VALUES\r\n"
	        		+ "           (?,?)";
	        PreparedStatement ps = null;
	        try (Connection con = DBUtils.getConnection()) {
		            ps = con.prepareStatement(sql);
		            ps.setString(1, function.getCarId());
		            ps.setInt(2, function.getFunctionId());
		            ps.execute();
	            return true;
	        } catch (Exception e) {
	            System.out.println(e.getMessage());
	        }
	        return false;
	    }

		//thu
			public Boolean addTou(CarTou tou) {
		        String sql = "INSERT INTO [dbo].[Cars_TOU]\r\n"
		        		+ "           ([car_id]\r\n"
		        		+ "           ,[TOU_id])\r\n"
		        		+ "     VALUES\r\n"
		        		+ "           (?,?)";
		        PreparedStatement ps = null;
		        try (Connection con = DBUtils.getConnection()) {
			            ps = con.prepareStatement(sql);
			            ps.setString(1, tou.getCarId());
			            ps.setInt(2, tou.getTouId());
			            ps.execute();
		            return true;
		        } catch (Exception e) {
		            System.out.println(e.getMessage());
		        }
		        return false;
		    }
	//thu
	private String convertDate(LocalDateTime date) {
		return date.toString().replace("T", " ");
	}
	public static void main(String[] args) {
		CarDAO dao = new CarDAO();
//		DateTimeFormatter f = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
//		LocalDateTime dateTime = LocalDateTime.from(f.parse("2024-04-08 00:00:00"));
//		LocalDateTime dateTime2 = LocalDateTime.from(f.parse("2024-04-09 00:00:00"));
//		System.out.println(dao.searchCar("",dateTime, dateTime2, 0, 5));
		List<Car> list = dao.getCarOwner("031203010462");
		for (Car c: list
			 ) {
			System.out.println(c);
		}
	}
}
