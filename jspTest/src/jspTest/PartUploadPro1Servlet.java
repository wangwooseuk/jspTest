package jspTest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/partuploadpro1")
@MultipartConfig(
		fileSizeThreshold = 0,
		location = "C:/upload"
	)

public class PartUploadPro1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PartUploadPro1Servlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String writer = request.getParameter("writer");
		Part part = request.getPart("partFile1");
		PrintWriter out = response.getWriter();
		String contentDisposition = part.getHeader("content-disposition");
		String uploadFileName = getUploadFileName(contentDisposition);
		part.write(uploadFileName);
		out.println("작성자 " + writer + "님이 " + uploadFileName + " 파일을 업로드 하였습니다.");
	}
	
	private String getUploadFileName(String contentDisposition) {
		String uploadFileName = null;
		String[] contentSplitStr = contentDisposition.split(";");
		int firstOutosIndex = contentSplitStr[2].indexOf("\"");
		int lastOutosIndex = contentSplitStr[2].lastIndexOf("\"");
		uploadFileName = contentSplitStr[2].substring(firstOutosIndex + 1, lastOutosIndex);
		return uploadFileName;
	}
}
