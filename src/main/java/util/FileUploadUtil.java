/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 *
 * @author Pham Mai The Ngoc - CE190901
 */
public class FileUploadUtil {

    public static final String UPLOAD_LOCATION = "C:/webprj/HotelPage/HotelPage/src/main/webapp/assets/img";

    public static void uploadFile(Part input, File output) throws IOException {
        try ( OutputStream os = new FileOutputStream(output);  InputStream is = input.getInputStream()) {
            byte[] buffer = new byte[1024];
            int byteRead;
            while ((byteRead = is.read(buffer)) > 0) {
                os.write(buffer, 0, byteRead);
            }
        }
    }
}
