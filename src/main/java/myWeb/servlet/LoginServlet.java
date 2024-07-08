package myWeb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// console 요청할때
		request.setCharacterEncoding("utf-8");		
		
//		String user_id = request.getParameter("userid");
//		String user_pw = request.getParameter("userpwd");
//		System.out.println("ID : "+user_id);
//		System.out.println("PW : "+user_pw);
		
		// 화면 응답할때
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
//		String data = "<html>";
//		data += "<body>";
//		data += "아이디 : "+ user_id;
//		data += "<br>";
//		data += "패스워드 : "+ user_pw;
//		data += "</body>";
//		data += "</html>";
//		
//		out.print(data);
		
		RequestDispatcher dispatch;
		
		HttpSession session = request.getSession();
		
		// view 설정한 파라메타 저장
		String userid = request.getParameter("userid");
		String userpwd = request.getParameter("userpwd");
		
		// 로그인이 정상적으로 들어와서 아이디를 찾아 홈화면으로 전환 시켜 준다.
		if(userid != null) {
			session.setAttribute("userid", userid);
			dispatch = request.getRequestDispatcher("index.jsp");
//			out.println("안녕하세요"+userid+"님!!");
		}
		
		// 로그인이 정상적으로 안들어온다면 다시 로그인 하라고 로그인 화면으로 전환 해준다.
		else {
			dispatch = request.getRequestDispatcher("login.jsp");
			session.invalidate();
//			out.println("<a href='./login.html'>다시 로그인 하세요!!</a>");
		}
		
		// if와 else 중 작동된 화면을 표시 해준다.
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
