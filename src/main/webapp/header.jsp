<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	isELIgnored="false"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
        <img src="./img/pets.png" class="pets">
        <h1 class="header-title">멍멍멍 강아지 멍멍멍</h1>
    </header>
    <nav>
        <ul id="menu">
            <li><a href="index.jsp">홈</a></li>
            <li><a href="table.jsp">게시판</a></li>
            
            <%
            if(session.isNew()){
            %>
            	<li><a href="login.jsp">로그인</a></li>
            	<li><a href="join.jsp">회원가입</a></li>
            <%
            }
            else{
            	String userid = (String)session.getAttribute("userid");
            	if(userid != null){
            %>
            	<li><a href="logout">로그아웃</a></li>
            	<li><a href="member">회원정보</a></li>
            	<li>안녕하세요! ${sessionScope.userid}님.(<%=request.getParameter("name") %>)</li>
            	
            <%
            	}
            	else{
            %>
            		<li><a href="login.jsp">로그인</a></li>
            		<li><a href="join.jsp">회원가입</a></li>
            <%
            	}
            }
            %>
            <!-- <li><a href="login.jsp">로그인</a></li>
            <li><a href="join.jsp">회원가입</a></li> -->
        </ul>
    </nav>
</body>
</html>