package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import utils.DBUtils;

public class BookingDAO {
	public boolean getStatus(String lisencePlate) {
		String sql = "SELECT [booking_no]\r\n"
				+ "FROM [CAR_RENTAL].[dbo].[Booking]\r\n"
				+ "WHERE [license_plate]=?\r\n"
				+ "AND \r\n"
				+ "start_date_time<GETDATE()\r\n"
				+ "AND\r\n"
				+ "end_date_time>GETDATE()";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            ps.setString(1, lisencePlate);
            rs = ps.executeQuery();
            while (rs.next()) {
                return false;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return true;
	}
	public int getRides(String lisencePlate) {
		String sql = "SELECT COUNT([booking_no])\r\n"
				+ "FROM [CAR_RENTAL].[dbo].[Booking]\r\n"
				+ "WHERE [license_plate]=?\r\n";
		PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            ps.setString(1, lisencePlate);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return 0;
	}
}
