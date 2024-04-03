package dao;

import com.fa.carrentalsystem.model.Profile;
import com.fa.carrentalsystem.model.User;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

public class ProfileDAO {
    private Profile getProfileFromResultSet(ResultSet rs) throws SQLException {
        String name = rs.getString(1);
        LocalDate dateOfBirth = LocalDate.parse(rs.getString(2));
        String phone = rs.getString(3);
        String email = rs.getString(4);
        String nationalId = rs.getString(5);
        String drivingLicense = rs.getString(6);
        String address = rs.getString(7);

        return new Profile(name, dateOfBirth, phone, email, nationalId, drivingLicense, address);
    }

    public boolean check(String input) {
        //init
        PreparedStatement ps = null;
        ResultSet rs = null;
        String findUserSQL = "Select [name],date_of_birth,phone,email,national_id,driving_license,[address] from [User] WHERE [email]=? ";

        //connect to db
        try (Connection con = DBUtils.getConnection()) {
            //find user by email
            ps = con.prepareStatement(findUserSQL);
            ps.setString(1, input);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        //if no email found - return null
        return false;
    }
}
