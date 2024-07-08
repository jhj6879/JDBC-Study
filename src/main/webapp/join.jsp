<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
        <h2>회원가입</h2>
        <form name="joinForm" action="join" method="post" id="joinForm">
            <table id="userTable">
                <tr>
                    <td>아이디</td>
                    <td id="id-area">
                        <input type="text" name="userid" id="userid" placeholder="아이디를 3~8글로 입력" minlength="3" maxlength="8">
                        <input type="button" onclick="checkId()" value="중복확인">
                    </td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td>
                        <input type="password" name="userpwd" id="userpwd" placeholder="4~20자 사이로 입력" minlength="4" maxlength="20">
                    </td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td><input type="text" name="username" id="username"></td>
                </tr>
                <tr>
                    <td>생년월일</td>
                    <td><input type="date" name="birthdate" id="birthdate"></td>
                </tr>
                <tr>
                    <td>성별</td>
                    <td>
                        <input type="radio" name="gender" id="genderM" value="M" checked>남자
                        <input type="radio" name="gender" id="genderG" value="G" checked>여자
                    </td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td><input type="text" name="usertel" id="usertel"></td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td><input type="text" name="useraddr" id="useraddr"></td>
                </tr>
            </table>
            <br>
            <input type="button" value="회원가입" onclick="checkForm()">
            <input type="reset" value="다시입력">
            <a href="./index.html"><input type="button" value="홈으로"></a>
        </form>

        <script>
        
        function checkId(){
        	var snd_data = $("#userid").val();
        	$.ajax({
        			type:"get",
        			dataType:"text",
        			async:true,
        			url:"http://localhost:8080/myWeb/checkid",
        			data:{data:snd_data},
        			success:function (data,textStatus) {
        				if(data == "true"){
        					$("#id-area").append("<p>사용 가능한 아이디입니다.</p>");
        				}else{
        					$("#id-area").append("<p>사용 불가능한 아이디입니다.</p>");
        				}
        			},
        			error:function (data,textStatus) {
        				window.alert("에러가 발생했습니다.");
        			},
        			complete:function(data,textStatus) {
        			}
        		});
        }
        
        function checkFormJquery(){
        	const form = $('#joinForm');
        	const userid = $('#userid').val();
        	const userid = $('#userpwd').val();
        	const userid = $('#username').val();
        	const userid = $('#birthdate').val();
        	const userid = $('#genderM').is(':checked');
        	const userid = $('#genderG').is(':checked');
        	const userid = $('#usertel').val();
        	const userid = $('#useraddr').val();
        	
        	if(userid.length < 3 || userid.length > 8){
                window.alert('아이디는 3~8자로 입력해주세요.');
                $('#userid').focus();
                return;
        	}
        	
        	if(userpwd.length < 4 || userpwd.length > 20){
                window.alert('패스워드는 4~20자로 입력해주세요.');
                $('#userpwd').focus();
                return;
        	}
        	
        	if(username == ""){
                window.alert("이름을 입력해 주세요.");
                $('#username').focus();
                return;
            }

            if(birthdate == ""){
                window.alert("생년월일을 입력해 주세요.");
                $('#birthdate').focus();
                return;
            }
            if(!genderM && !genderG){
                window.alert("성별을 선택해 주세요.");
                return;
            }

            if(usertel == ""){
                window.alert("전화번호를 입력해 주세요.");
                $('#usertel').focus();
                return;
            }

            if(useraddr == ""){
                window.alert("주소를 입력해 주세요.");
                $('#useraddr').focus();
                return;
            }

            window.alert("회원가입이 완료되었습니다.");
            myform.submit();
        }
            

            function checkForm(){
            	
            	const myform = document.getElementById("joinForm");
                const userid = document.getElementById("userid");
                const userpwd = document.getElementById("userpwd");
                const username = document.getElementById("username");
                const birthdate = document.getElementById("birthdate");
                const genderM = document.getElementById("genderM").checked;
                const genderG = document.getElementById("genderG").checked;
                const usertel = document.getElementById("usertel");
                const useraddr = document.getElementById("useraddr");

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
                myform.submit();

                //location.href="./index.html";

            }

        </script>
	
	<%@ include file="footer.jsp" %><br>
</body>
</html>