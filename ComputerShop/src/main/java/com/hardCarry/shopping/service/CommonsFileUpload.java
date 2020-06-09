package com.hardCarry.shopping.service;

import java.io.FileOutputStream;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
@Scope("prototype")
public class CommonsFileUpload {
	private FileOutputStream fos;
	public void writeFile(MultipartFile file, String path, String fileName) {
		try {
			byte fileData[] = file.getBytes();
			fos = new FileOutputStream(path + "\\" + fileName);
			fos.write(fileData);
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (fos != null) {
				try {
					fos.close();
				} catch (Exception e) {
				}
			}
		} // try end;
	}// wirteFile() end;
}
