package egovframework.com.cmm.web;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FileDownController {

	@RequestMapping("/fileDownload.do")
	public void fileDownload4(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			// fileName 파라미터로 파일명을 가져온다.
			String fileName = request.getParameter("boardFile");

			// 파일이 실제 업로드 되어있는(파일이 존재하는) 경로를 지정한다.
			
			String filePath = "";
			//String filePath = "C:";
			
			// 경로와 파일명으로 파일 객체를 생성한다.
			File dFile = new File(filePath, fileName);

			// 파일 길이를 가져온다.
			int fSize = (int) dFile.length();

			// 파일이 존재
			if (fSize > 0) {

				String encodedFilename = "attachment; filename*=" + "UTF-8" + "''"
						+ URLEncoder.encode(fileName, "UTF-8");

				// ContentType 설정
				response.setContentType("application/octet-stream; charset=utf-8");

				// Header 설정
				response.setHeader("Content-Disposition", encodedFilename);

				// ContentLength 설정
				response.setContentLengthLong(fSize);

				BufferedInputStream in = null;
				BufferedOutputStream out = null;

				in = new BufferedInputStream(new FileInputStream(dFile));

				out = new BufferedOutputStream(response.getOutputStream());

				try {
					byte[] buffer = new byte[4096];
					int bytesRead = 0;

					while ((bytesRead = in.read(buffer)) != -1) {
						out.write(buffer, 0, bytesRead);
					}

					out.flush();
				} finally {

					in.close();
					out.close();
				}
			} else {
				throw new FileNotFoundException("파일이 없습니다.");
			}
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}
}
    
