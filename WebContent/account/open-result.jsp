<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
//----------------------------------------------------계좌 생성
String accountNum = "";
Random random = new Random();
accountNum = random.nextInt(9000)+1000 + "-";
for(int i=0;i<4;i++){
	accountNum += String.valueOf(random.nextInt(10));
}
//----------------------------------------------------날짜
String today = "";
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
today = sdf.format(date);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이름 : <%= name %></h3><br />
	<h3>계좌번호 : <%= accountNum %></h3><br />
	<h3>개설일 : <%= today %></h3><br />
	<a href="../index.jsp">홈으로</a>
</body>
</html>