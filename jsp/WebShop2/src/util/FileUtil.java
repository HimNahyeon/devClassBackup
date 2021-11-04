package util;

import java.io.*;


public class FileUtil {
	public static void saveImage(String fname, byte[] data) 
		throws IOException {
			
			File f = new File("/photos");
			if(!f.exists()) f.mkdir();
			f = new File(fname);
			FileOutputStream out = new FileOutputStream(f);
			out.write(data);
			out.close();
		}
}
