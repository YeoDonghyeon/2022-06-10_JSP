package chapter01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chapter01/ex03Result")
public class Chap01Ex03Result extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// value1, value2 파라미터 값을 꺼내서
		int value1 = Integer.parseInt(request.getParameter("value1"));
		int value2 = Integer.parseInt(request.getParameter("value2"));
		
		// 더하고
		int result = value1 + value2;
		
		// 그결과를 ex02Result.html처럼 h2 태그에 출력
		// ( HTML을 출력 )
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Insert title here</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>계산 결과</h1>");
		out.print("<h2>" + result + "</h2>");
		out.print("</body>");
		out.print("<html>");
		
		out.close();
	}


}
