package myWeb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 * Servlet implementation class JsonServlet
 */
@WebServlet("/json")
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter writer = response.getWriter();

		String jsonInfo = request.getParameter("jsonInfo");
		
		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject)jsonParser.parse(jsonInfo);
			System.out.println("* 회원 정보 *");
			System.out.println(jsonObject.get("name"));
			System.out.println(jsonObject.get("age"));
			System.out.println(jsonObject.get("getder"));
			System.out.println(jsonObject.get("nickname"));
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		// 뷰에 보여지는 데이터
		JSONObject sendData = new JSONObject();
		sendData.put("name", "김연아");
		sendData.put("age", "21");
		sendData.put("getder", "여자");
		sendData.put("nickname", "칼치");
		
		String sendJson = sendData.toJSONString();
		System.out.println(sendJson);
		
		writer.print(sendJson);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
