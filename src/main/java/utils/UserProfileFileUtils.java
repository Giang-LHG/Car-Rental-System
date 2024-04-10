package utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

public class UserProfileFileUtils {

    public static String uploadUserImage(String UPLOAD_DIR, HttpServletRequest request) throws IOException {
        String fileName = null;
        try {
            List<Part> parts = (List<Part>) request.getParts();
            for (Part part : parts) {
                if (part.getName().equalsIgnoreCase("drivingLicense")) {
                    fileName = getPredefinedUserImageName(part);
                    if (fileName == null || fileName.equals("")) return null;
                    String applicationPath = request.getServletContext().getRealPath("");
                    String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;
                    Files.createDirectories(Paths.get(basePath));
                    FileUtils.cleanDirectory(new File(basePath));
                    InputStream inputStream = null;
                    OutputStream outputStream = null;
                    try {
                        File outputFilePath = new File(basePath + fileName);
                        inputStream = part.getInputStream();
                        outputStream = Files.newOutputStream(outputFilePath.toPath());
                        int read = 0;
                        final byte[] bytes = new byte[1024];
                        while ((read = inputStream.read(bytes)) != -1) {
                            outputStream.write(bytes, 0, read);
                        }
                    } catch (IOException ex) {
                        fileName = null;
                    } finally {
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    }
                    return fileName;
                }
            }
        } catch (ServletException | IOException | StringIndexOutOfBoundsException e) {
            System.out.println(e.getMessage());
            return null;
        }
        return null;
    }

    private static String getPredefinedUserImageName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return "userImage" + content.substring(content.indexOf('.')).trim().replace("\"", "");
            }
        }
        return null;
    }
}
