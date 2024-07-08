package myWeb.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FirstServlet extends HttpServlet {  // HttpServlet를 상속받는다.
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String context = request.getContextPath();
		String url = request.getRequestURL().toString();
		String uri = request.getRequestURI();
		String mapping = request.getServletPath();
		
		out.println("<htlm>");
		out.println("<head>");
		out.println("<title>Request Info</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>context : "+context+"</p><br>");
		out.println("<p>url : "+url+"</p><br>");
		out.println("<p>uri : "+uri+"</p><br>");
		out.println("<p>mapping : "+mapping+"</p><br>");
		out.println("</body>");
		out.println("</htlm>");
		
		// redirect 포워딩
//		PrintWriter out = response.getWriter();
		// 화면 전환없기 기능 전환 
//		response.sendRedirect("second");
		
		// Attribute 바인딩
		// ex) 부트에서 모델과 비슷하다
//		request.setAttribute("address", "대전 서구 둔산동");
		
		// dispatch 포워딩
		// dispatch 객체 생성
//		RequestDispatcher dispatch = request.getRequestDispatcher("second");
		
		// dispatch 실제 이동 방식
		// redirect과의 차이는 request를 전달할 수 있다.
//		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
