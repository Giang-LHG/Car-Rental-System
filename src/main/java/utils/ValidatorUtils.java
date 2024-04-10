package utils;

import java.time.LocalDate;
import java.time.Period;
import java.time.YearMonth;
import java.time.temporal.ChronoUnit;

public class ValidatorUtils {
    public boolean PasswordValidator(String input) {
        String regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[^a-zA-Z\\d\\s]).{8,32}$"; //can it nhat 1 UPPERCASE, 1 lowercase , 1 symbol, 1 number, length 8->16
        return input.matches(regex);
    }

    public boolean PhoneValidator(String input) {
        String regex = "^(0|84)(2(0[3-9]|1[0-6|8|9]|2[0-2|5-9]|3[2-9]|4[0-9]|5[1|2|4-9]|6[0-3|9]|7[0-7]|8[0-9]|9[0-4|6|7|9])|3[2-9]|5[5|6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])([0-9]{7})$";
        return input.matches(regex);
    }

    public boolean DOBValidator(LocalDate input) {
        LocalDate currentDate = LocalDate.now();
        int age;
        if (input != null) {
            age = Period.between(input, currentDate).getYears();
            return age >= 18;
        }
        return false;
    }

    public boolean NameValidator(String input) {
        String regex = "^[a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s]+$";
        return input.matches(regex);
    }

    public boolean FullNameValidator(String input) {
        String regex = "^[a-zA-Z_ ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s]+$";
        return input.matches(regex);
    }

    public boolean AddressValidator(String input) {
        String regex = "^([a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ,-/\\s\\d])+$";
        return input.matches(regex);
    }

    public boolean DescriptionValidator(String input) {
        String regex = "^([a-zA-Z\\s])+$";
        return input.matches(regex);
    }

    public boolean CourseNameValidator(String input) {
        String regex = "^([A-Z]{3})(\\d{3})$";          //allow 6 chars only (3 normal chars and 3 numbers consecutively)
        return input.matches(regex);
    }

    public boolean EmailValidator(String input) {        //allow email format only
        String regex = "^[A-Za-z0-9.]+@(gmail.com)$";
        return input.matches(regex);
    }

    public boolean SemesterNameValidator(String input) { //allow prefix string and 4 number only
        String regex = "^(?i)((fall)|(spring)|(summer))([0-9]){4}$";
        return input.matches(regex);
    }

    public boolean ClassNameValidator(String input) {    //allow normal char insensitive case and 0-9
        String regex = "^([a-zA-Z0-9])+$";
        return input.matches(regex);
    }

    public boolean compareStartAndEndDate(LocalDate startDate, LocalDate endDate) {
        boolean check = true;
        LocalDate today = LocalDate.now();
        //check xem sang thang sau so voi startDate chua
        long monthsBetween = ChronoUnit.MONTHS.between(
                YearMonth.from(startDate),
                YearMonth.from(today)
        );

        if (monthsBetween == 0) {
            check = false;
        }

        //check xem due date co it nhat 1 tuan so voi ngay tao don hay ko
        long daysBetween = ChronoUnit.DAYS.between(today, endDate);

        if (daysBetween < 0) {
            check = false;
        }

        return check;
    }

    public static void main(String[] args) {
        ValidatorUtils vu = new ValidatorUtils();
        System.out.println(vu.EmailValidator("mineluciferlol@gmail.com"));
    }
}
