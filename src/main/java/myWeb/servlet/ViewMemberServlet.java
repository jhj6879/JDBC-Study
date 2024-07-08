package myWeb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myWed.dto.MemberDto;

/**
 * Servlet implementation class ViewMemberServlet
 */
@WebServlet("/viewMember")
public class ViewMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		MemberDto member = (MemberDto)request.getAttribute("member");
		
		out.println("<htlm>");
		out.println("<body>");
		out.println("<h1>회원가입 정보</h1>");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>아이디</td>");
		out.println("<td>"+member.getUserid()+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>비밀번호</td>");
		out.println("<td>"+member.getUserpwd()+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>이메일</td>");
		out.println("<td>"+member.getUserEm()+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>이름</td>");
		out.println("<td>"+member.getUsername()+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>생년월일</td>");
		out.println("<td>"+member.getBirthdate()+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>성별</td>");
		out.println("<td>"+member.getGender()+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>전화번호</td>");
		out.println("<td>"+member.getUsertel()+"</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>주소</td>");
		out.println("<td>"+member.getUseraddr()+"</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("<a href='index.html'>홈으로</a>");
		out.println("</body>");
		out.println("</htlm>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
