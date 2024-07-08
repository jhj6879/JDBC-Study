<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');
    </style>
    <style>
        *{
            font-family: "Nanum Pen Script", cursive;
            font-weight: 400;
            font-style: normal;
        }
        th,td{
            border-style: solid;
            border-width: 1px;
            border-color: rgb(187, 250, 163);
            padding: 5px 10px;
            width: 100px;
            height: 30px;
        }
        .ti{
            font-size: 20px;
            background-color: aquamarine;
        }
        .dog{
            font-size: 25px;
        }
    </style>
</head>
<body>
	<%@ include file="header.jsp" %><br>
        <h1>게시판</h1>
        <table>
            <caption class="dog">강아지</caption>
            <tr class="ti">
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성날짜</th>
            </tr>
            <tr>
                <td>1</td>
                <td><a href="#">제목-1</a></td>
                <td>작성자</td>
                <td>날짜</td>
            </tr>
            <tr>
                <td>2</td>
                <td><a href="#">제목-2</a></td>
                <td>작성자</td>
                <td>날짜</td>
            </tr>
            <tr>
                <td>3</td>
                <td><a href="#">제목-3</a></td>
                <td>작성자</td>
                <td>날짜</td>
            </tr>
            <tr>
                <td>4</td>
                <td><a href="#">제목-4</a></td>
                <td>작성자</td>
                <td>날짜</td>
            </tr>
            <tr>
                <td>5</td>
                <td><a href="#">제목-5</a></td>
                <td>작성자</td>
                <td>날짜</td>
            </tr>
        </table>
	<%@ include file="footer.jsp" %><br>
</body>
</html>