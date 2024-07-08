package myWeb.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myWed.dto.MemberDto;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		MemberDto member = new MemberDto();
		
		member.setUserid(request.getParameter("userid"));
		member.setUserpwd(request.getParameter("userpwd"));
		member.setUserEm(request.getParameter("userEm"));
		member.setUsername(request.getParameter("username"));
		member.setBirthdate(request.getParameter("birthdate"));
		member.setGender(request.getParameter("gender"));
		member.setUsertel(request.getParameter("usertel"));
		member.setUseraddr(request.getParameter("useraddr"));
		
		request.setAttribute("member", member);
		
		// 회원가입 후 자동 로근인 되어 index.jsp로 넘어가게
		
		HttpSession session = request.getSession();
		
		session.setAttribute("userid", request.getParameter("userid"));
		
		RequestDispatcher dispatch = request.getRequestDispatcher("member.jsp");
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
