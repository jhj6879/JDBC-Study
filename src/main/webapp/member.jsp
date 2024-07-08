<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="myWed.dto.MemberDto"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<% //MemberDto member = (MemberDto)request.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');
        </style>
        <style>
            *{
                font-family: "Nanum Pen Script", cursive;
                font-weight: 400;
                font-style: normal;
            }
            body{
                margin-left: 20px;
            }
            .bu{
                margin-left: 3px;
            }
            
        </style>
</head>
<body>
	<%@ include file="header.jsp" %><br>
        <h2>회원정보</h2>
        <form name="memberform" action="member" method="post">
            <table>
                <tr>
                    <td>
                    	<label for="userid">아이디</label>
                    </td>
                    <td>
                        <input type="text" name="userid" id="userid" value="${member.userid}" disabled>
                        <input type="hidden" name="mode" value="edit">
                    </td>
                </tr>
                <tr>
                    <td><label for="userpwd">비밀번호</label></td>
                    <td>
                        <input type="password" name="userpwd" id="userpwd" value="${member.userpwd}">
                    </td>
                </tr>
                <tr>
                    <td><label for="userEm">이메일</label></td>
                    <td>
                        <input type="email" name="userEm" id="userEm" value="${member.userEm}">
                    </td>
                </tr>
                <tr> 
                    <td><label for="username">이름</label></td>
                    <td><input type="text" name="username" id="username" value="${member.username}"></td>
                </tr>
                <tr>
                    <td><label for="birthdate">생년월일</label></td>
                    <td><input type="date" name="birthdate" id="birthdate" value="${member.birthdate}" disabled></td>
                </tr>
                <tr>
                    <td><label for="gender">성별</label></td>
                    <td>
                        <input type="text" name="gender" id="gender" value="${member.gender}" disabled>
                    </td>
                </tr>
                <tr>
                    <td><label for="usertel">전화번호</label></td>
                    <td><input type="text" name="usertel" id="usertel" value="${member.usertel}"></td>
                </tr>
                <tr>
                    <td><label for="useraddr">주소</label></td>
                    <td><input type="text" name="useraddr" id="useraddr" value="${member.useraddr}"></td>
                </tr>
            </table>
            <br>
            <input type="button" value="수정" onclick="checkForm()">
            <a href="./index.html"><input type="button" value="홈으로"></a>
        </form>

        <script>
            const myform = document.getElementById("memberform");
            const userid = document.getElementById("userid");
            const userpwd = document.getElementById("userpwd");
            const userEm = document.getElementById("userEm");
            const username = document.getElementById("username");
            const birthdate = document.getElementById("birthdate");
            const genderM = document.getElementById("genderM").checked;
            const genderG = document.getElementById("genderG").checked;
            const usertel = document.getElementById("usertel");
            const useraddr = document.getElementById("useraddr");

            function checkForm(){

                if(userid.value.length < 3 || userid.value.length > 8){
                    window.alert('아이디는 3~8자로 입력해주세요.');
                    myform.userid.focus();
                    return;
                }

                if(userpwd.value.length < 4 || userpwd.value.length > 20){
                    window.alert("패스워드는 4~20자로 입력해주세요.");
                    myform.userpwd.focus();
                    return;
                }

                if(username.value == ""){
                    window.alert("이름을 입력해 주세요.");
                    myform.username.focus();
                    return;
                }

                if(birthdate.value == ""){
                    window.alert("생년월일을 입력해 주세요.");
                    myform.birthdate.focus();
                    return;
                }

                if(userEm.value.indexOf('@') == -1){ // 존재한다면 -1이 아닌 숫자가 반환됨
                    window.alert("이메일 형식이 아닙니다.");
                    myform.userEm.focus(); 
                    return;
                }

                if(!genderM && !genderG){
                    window.alert("성별을 선택해 주세요.");
                    return;
                }

                if(usertel.value == ""){
                    window.alert("전화번호를 입력해 주세요.");
                    myform.usertel.focus();
                    return;
                }

                if(useraddr.value == ""){
                    window.alert("주소를 입력해 주세요.");
                    myform.useraddr.focus();
                    return;
                }

                window.alert("회원가입이 완료되었습니다.");
                //myform.submit();

                location.href="./index.jsp";

            }

        </script>
	
	<%@ include file="footer.jsp" %><br>
</body>
</html>