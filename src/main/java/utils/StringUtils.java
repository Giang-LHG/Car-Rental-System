package utils;

import org.apache.commons.text.StringEscapeUtils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class StringUtils {

    public static String convertToUTF(String input){
        return StringEscapeUtils.unescapeHtml4(input);
    }

    public static String decodeURL(String url) {
        String decodedURL = null;
        try {
            decodedURL = URLDecoder.decode(url, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return decodedURL;
    }
    public static void main(String[] args) {
        String test = StringUtils.decodeURL("Th%C3%A0nh%20ph%E1%BB%91%20H%E1%BA%A3i%20Ph%C3%B2ng Qu%E1%BA%ADn%20Ng%C3%B4%20Quy%E1%BB%81n Ph%C6%B0%E1%BB%9Dng%20M%C3%A1y%20T%C6%A1 ddsczdc");
        System.out.println(test);
    }

}
