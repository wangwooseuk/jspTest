package jspTest;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formex")
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String nm = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		String mj = request.getParameter("major");
		String[] hb = request.getParameterValues("hobby");
		String pt = request.getParameter("protocol");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		
		out.println("<body>");
		out.println("이름 : " + nm + "<br/>");
		out.println("아이디 : " + id + "<br/>");
		out.println("비밀번호 : " + pw + "<br/>");
		out.println("취미 : " + mj + "<br/>");
		out.println("특기 : " + Arrays.toString(hb) + "<br/>");
		out.println("주소 : " + pt + "<br/>");
		out.println("</body>");
		
		out.println("</html>");

		
	}

}
