<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap')
	;
</style>
<style>
* {
	font-family: "Nanum Pen Script", cursive;
	font-weight: 400;
	font-style: normal;
}

.lock {
	width: 50px;
	height: 50px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%><br>
	<div>
		<img src="./img/lock.png" class="lock">
	</div>
	<div>
		<form name="loginForm" action="./login" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td>
					<input name="userid" type="text" class="userid">
					</td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td>
					<input name="userpwd" type="password" class="userpwd">
					</td>
				</tr>
			</table>
			<input type="button" value="로그인" onclick="checkForm()"> 
			<input type="button" value="회원가입" onclick="location.href='join.jsp'">
			<script>
            function checkForm(){    
            	
            	const loginForm = document.loginForm;
            	const userid = document.getElementById("userid");
                const userpwd = document.getElementById("userpwd");
	                
	            //if(userid.value.length < 3 || userid.value.length > 8){
	            //    window.alert('아이디는 3~8자로 입력해주세요.');
	            //    myform.userid.focus();
	            //    return;
	            //}
	
	            //if(userpwd.value.length < 4 || userpwd.value.length > 20){
	            //    window.alert("패스워드는 4~20자로 입력해주세요.");
	            //    myform.userpwd.focus();
	            //    return;
	            //}
	                    
	            window.alert("로그인이 완료되었습니다.");
	            loginForm.submit();
	        }
            </script>
		</form>
	</div>
	<%@ include file="footer.jsp"%><br>
</body>
</html>