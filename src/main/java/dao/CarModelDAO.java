package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.fa.carrentalsystem.model.CarModel;

import utils.DBUtils;

public class CarModelDAO {
	//thu
	private CarModel getCarModel(ResultSet rs) throws SQLException {
	    Integer id = rs.getInt("id");
	    String name = rs.getString("name");
	    Integer parentId = rs.getInt("parent_id");
	    String type = rs.getString("type");
		CarModel carModel = new CarModel(id, name, parentId, type);
		return carModel;
	}
	//thu
	public ArrayList<CarModel> getBrand(){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT [id]\r\n"
				+ "      ,[name]\r\n"
				+ "      ,[parent_id]\r\n"
				+ "      ,[type]\r\n"
				+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
				+ "  WHERE type = 'brand'";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}

	//thu
	public ArrayList<CarModel> getModel(int parentId){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT [id]\r\n"
				+ "      ,[name]\r\n"
				+ "      ,[parent_id]\r\n"
				+ "      ,[type]\r\n"
				+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
				+ "  WHERE type = 'model'"
				+ "  AND parent_id = ?";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
        	ps.setInt(1, parentId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}

	//thu
	public ArrayList<CarModel> getModel(){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT [id]\r\n"
				+ "      ,[name]\r\n"
				+ "      ,[parent_id]\r\n"
				+ "      ,[type]\r\n"
				+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
				+ "  WHERE type = 'model'";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}
	//thu
	public ArrayList<CarModel> getColor(int parentId){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT [id]\r\n"
				+ "      ,[name]\r\n"
				+ "      ,[parent_id]\r\n"
				+ "      ,[type]\r\n"
				+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
				+ "  WHERE type = 'color'"
				+ "  AND parent_id = ?";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
        	ps.setInt(1, parentId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}

	//thu
	public ArrayList<CarModel> getColor(){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT [id]\r\n"
				+ "      ,[name]\r\n"
				+ "      ,[parent_id]\r\n"
				+ "      ,[type]\r\n"
				+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
				+ "  WHERE type = 'color'";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}
	//thu
	public ArrayList<CarModel> getSeat(int parentId){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT [id]\r\n"
				+ "      ,[name]\r\n"
				+ "      ,[parent_id]\r\n"
				+ "      ,[type]\r\n"
				+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
				+ "  WHERE type = 'seat'"
				+ "  AND parent_id = ?";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
        	ps.setInt(1, parentId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}

	//thu
	public ArrayList<CarModel> getSeat(){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT [id]\r\n"
				+ "      ,[name]\r\n"
				+ "      ,[parent_id]\r\n"
				+ "      ,[type]\r\n"
				+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
				+ "  WHERE type = 'seat'";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}

	//thu
	public ArrayList<CarModel> getFunction(String licensePlate){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT model.id[id]\r\n"
				+ ",[name]\r\n"
				+ ",[parent_id]\r\n"
				+ ",[type]\r\n"
				+ "FROM [CAR_RENTAL].[dbo].[Cars_Functions] func\r\n"
				+ "JOIN [CAR_RENTAL].[dbo].[Car Model] model ON func.function_id = model.id\r\n"
				+ "WHERE [car_id] = ?";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
        	ps.setString(1, licensePlate);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}

	//thu
	public ArrayList<CarModel> getTOU(String licensePlate){
		ArrayList<CarModel> list = new ArrayList<CarModel>();
		String sql = "SELECT model.id[id]\r\n"
				+ ",[name]\r\n"
				+ ",[parent_id]\r\n"
				+ ",[type]\r\n"
				+ "FROM [CAR_RENTAL].[dbo].[Cars_TOU] tou\r\n"
				+ "JOIN [CAR_RENTAL].[dbo].[Car Model] model ON tou.TOU_id = model.id\r\n"
				+ "WHERE car_id = ?\r\n";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
        	ps.setString(1, licensePlate);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getCarModel(rs));
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
	}
	//thu
		public ArrayList<CarModel> getFunctions(){
			ArrayList<CarModel> list = new ArrayList<CarModel>();
			String sql = "SELECT [id]\r\n"
					+ "      ,[name]\r\n"
					+ "      ,[parent_id]\r\n"
					+ "      ,[type]\r\n"
					+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
					+ "  WHERE type = 'functions'";
			PreparedStatement ps = null;
	        ResultSet rs = null;

	        try (Connection con = DBUtils.getConnection()) {
	            ps = con.prepareStatement(sql);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                list.add(getCarModel(rs));
	            }
	            return list;
	        } catch (Exception e) {
	            System.out.println(e.getMessage());
	        }
	        return null;
		}
		//thu
		public ArrayList<CarModel> getTOU(){
			ArrayList<CarModel> list = new ArrayList<CarModel>();
			String sql = "SELECT [id]\r\n"
					+ "      ,[name]\r\n"
					+ "      ,[parent_id]\r\n"
					+ "      ,[type]\r\n"
					+ "  FROM [CAR_RENTAL].[dbo].[Car Model]\r\n"
					+ "  WHERE type = 'tou'";
			PreparedStatement ps = null;
	        ResultSet rs = null;

	        try (Connection con = DBUtils.getConnection()) {
	            ps = con.prepareStatement(sql);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                list.add(getCarModel(rs));
	            }
	            return list;
	        } catch (Exception e) {
	            System.out.println(e.getMessage());
	        }
	        return null;
		}
	public static void main(String args[]) {
		CarModelDAO dao = new CarModelDAO();
		System.out.println(dao.getFunctions());
	}
}
