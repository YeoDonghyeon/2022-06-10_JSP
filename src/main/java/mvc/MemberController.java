package mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/controller")
public class MemberController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		MemberDTO newMemberInfo = new MemberDTO();
		newMemberInfo.setId(id);
		newMemberInfo.setPw(pw);
		newMemberInfo.setName(name);
		newMemberInfo.setEmail(email);
		
		MemberService service = new MemberService();
		int statusCode = service.joinMember(newMemberInfo);
		
		response.setStatus(statusCode);
	}

}
