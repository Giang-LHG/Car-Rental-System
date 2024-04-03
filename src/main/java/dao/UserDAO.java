package dao;

import com.fa.carrentalsystem.model.User;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private User getUserFromResultSet(ResultSet rs) throws SQLException{
        String nationalId = rs.getString(1);
        String name = rs.getString(2);
        LocalDate dateOfBirth = LocalDate.parse(rs.getString(3));
        String phone = rs.getString(4);
        String email = rs.getString(5);
        String address = rs.getString(6);
        String drivingLicense = rs.getString(7);
        Double wallet = rs.getDouble(8);
        String password = rs.getString(9);
        int roleId = rs.getInt(10);

        return new User(nationalId,name,dateOfBirth,phone,email,address,drivingLicense,wallet,password,roleId);
    }

    public List<User> loadEmployee() {
        ArrayList<User> list = new ArrayList<>();
        String sql = "Select * from [User] ";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(getUserFromResultSet(rs));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

    public User login(String email, String password) {
        //init
        PreparedStatement ps = null;
        ResultSet rs = null;
        String getUserLoginSQL = "select * from [User] where [email]=? and [password]=?";

        //connect to db
        try (Connection con = DBUtils.getConnection()) {
            ps = con.prepareStatement(getUserLoginSQL);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                return getUserFromResultSet(rs);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        //if sql wrong, wrong email or password - return null
        return null;
    }

    public User check(String input) {
        //init
        PreparedStatement ps = null;
        ResultSet rs = null;
        String findUserSQL = "  SELECT * FROM [user] WHERE [email]=? ";

        //connect to db
        try (Connection con = DBUtils.getConnection()) {
            //find user by email
            ps = con.prepareStatement(findUserSQL);
            ps.setString(1, input);
            ps.setString(2, input);
            rs = ps.executeQuery();
            if (rs.next()) {
                return getUserFromResultSet(rs);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        //if no email found - return null
        return null;
    }


    public static void main(String[] args) {
        UserDAO ud = new UserDAO();
        List<User> list = ud.loadEmployee();
//        System.out.println(list.size());
//
//        for (User u:list
//             ) {
//            System.out.println(u.toString());
//        }

        User u = ud.login("mineluciferlol@gmail.com","1");
        System.out.println(u.toString());
    }
}