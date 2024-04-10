package utils;

import org.apache.commons.text.StringEscapeUtils;

public class StringUtils {

    public static String convertToUTF(String input){
        return StringEscapeUtils.unescapeHtml4(input);
    }
    public static void main(String[] args) {
        String test = StringUtils.convertToUTF("Nguy&#7877;n Vi&#7879;t Thu");
        System.out.println(test);
    }

}
