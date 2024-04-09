package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;

import com.fa.carrentalsystem.model.Booking;
import com.fa.carrentalsystem.model.Feedback;
import com.fa.carrentalsystem.model.User;

import utils.DBUtils;

public class RatingDAO {
	//thu
	private Feedback getFeedback(ResultSet rs) throws SQLException {
	    int id = rs.getInt("id");
	    float ratings = rs.getFloat("rating");
	    String content = rs.getString("content");
	    LocalDateTime dateTime = LocalDateTime.parse(rs.getString("date_time"));
	    Booking booking = new Booking(rs.getInt("booking_id"), null, null, null, null, null, null, null);
	    User customer = new User(rs.getString("customer_id"), null, null, null, null, null, null, null, null, null);
	    Feedback feedback = new Feedback(id, ratings, content, dateTime, booking, customer);
	    return feedback;
	}
	//thu
	public Double getRatingPoint(String licensePlate) {
        String sql = "SELECT AVG([rating])[rating]\r\n"
        		+ "FROM [CAR_RENTAL].[dbo].[Feedback]\r\n"
        		+ "WHERE [car_id] = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            ps.setString(1, licensePlate);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getDouble("rating");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

}
