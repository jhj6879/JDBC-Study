<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="myWed.dto.MemberDto"
	import="java.util.List"
    pageEncoding="UTF-8"%>
<%!
	String name = "듀크";
	public String getName() { return name; }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫 번째 JSP 페이지</title>
</head>
<body>
	<h1>hello JSP!!</h1>
	<%@ include file="img.jsp" %><br>
	<h1>JSP 실습입니다.</h1>
	<h1>안녕하세요 <%=name%> 님!!</h1>
	<%
	for(int i=2; i<=9; i++){
		for(int j=1; j<=9; j++){
	%>
	<p><%=i%> * <%=j%> = <%=i*j%></p>
	<%		
		}
	}
	%>
</body>
</html>