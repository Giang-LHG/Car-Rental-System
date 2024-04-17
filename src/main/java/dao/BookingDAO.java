package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.fa.carrentalsystem.model.Booking;
import utils.DBUtils;

public class BookingDAO {

    private String convertDate(String date) {
        return date.replace(" ", "T");
    }
    private Booking getBookingFromResultSet(ResultSet rs) throws SQLException {
        int booking_no = rs.getInt(1);
        String startDate = rs.getString(2);
        String endDate = rs.getString(3);
        String driverInformation = rs.getString(4);
        int paymentMethod = rs.getInt(5);
        int status = rs.getInt(6);
        String customerId = rs.getString(7);
        String licensePlate = rs.getString(8);

        return new Booking(booking_no, LocalDateTime.parse(convertDate(startDate)), LocalDateTime.parse(convertDate(endDate)), driverInformation, paymentMethod, status, customerId, licensePlate);
    }

    public List<Booking> getAllBooking(String customerId) {
        List<Booking> listBooking = new ArrayList<>();
        String sql = "SELECT * FROM Booking WHERE customer_id = ? ";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            ps.setString(1, customerId);
            rs = ps.executeQuery();
            while (rs.next()) {
                listBooking.add(getBookingFromResultSet(rs));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return listBooking;
    }

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

    public void createBooking(Booking booking) {
        PreparedStatement ps = null;
        String addBooking = new StringBuilder().append("INSERT INTO [dbo].[Booking]\n")
                .append("([start_date_time]\n")
                .append(",[end_date_time]\n")
                .append(",[driver's information]\n")
                .append(",[payment_method]\n")
                .append(",[status]\n")
                .append(",[customer_id]\n")
                .append(",[license_plate])\n")
                .append("VALUES\n").
                append("(?,?,?,?,?,?,?)").toString();

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(addBooking);
            ps.setObject(1, booking.getStartDateTime());
            ps.setObject(2, booking.getEndDateTime());
            ps.setNull(3,1);
            ps.setInt(4, booking.getPaymentMethod());
            ps.setInt(5, booking.getStatus());
            ps.setString(6, booking.getCustomerId());
            ps.setString(7, booking.getLicensePlate());

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] args) {

//        Booking b = new Booking(LocalDateTime.parse("2025-04-02T00:00:00.000"),LocalDateTime.parse("2025-04-03T00:00:00.000"),"1",1,1,"031203010462","30C-1189");
//        bd.createBooking(b);
        BookingDAO bd = new BookingDAO();
        List<Booking> list = bd.getAllBooking("031203010461");
        for (Booking b: list) {
            System.out.println(b);
        }
    }
}
