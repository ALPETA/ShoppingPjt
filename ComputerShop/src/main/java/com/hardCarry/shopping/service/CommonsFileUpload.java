package com.hardCarry.shopping.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CommonsFileUpload {

	public final static String MAIN_IMG_PATH = "\\imgs\\mainImg\\";

	@Autowired
	ServletContext context;

	public String getSavePath() {
		return context.getRealPath("");
	}

	public String getMainImgPath() {
		return getSavePath() + "\\imgs\\mainImg\\";
	}

	public String getRenameFile(MultipartFile file) {
		return /* UUID.randomUUID() + */file.getOriginalFilename();
	}

	public void fileWrite(MultipartFile file, String filePath) {
		try {
			file.transferTo(new File(filePath));
		} catch (IOException e) {
		}
	}
}