<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String ssn = request.getParameter("ssn");
//----------------------------------------------------생년월일
String[] ssnArr = ssn.split("");
String year = ssnArr[0] + ssnArr[1];
String month = ssnArr[2] + ssnArr[3];
String day = ssnArr[4] + ssnArr[5];
//----------------------------------------------------성별
String gender = "";
switch(ssnArr[7]){
case "1": case "3": 
	gender = "남자";
	break;
case "2": case "4": 
	gender = "여자";
	break;
case "5": case "6":
	gender = "외국인";
	break;
default: 
	gender = "다시 입력하세요";
	break;
}
//----------------------------------------------------BMI
double bmi = 0.0;
double height = Double.parseDouble(request.getParameter("height"));
double weight = Double.parseDouble(request.getParameter("weight"));
bmi = weight / (height * height * 0.0001);
String result = "";
if(bmi>=40){
	result = "고도 비만";
}else if(bmi>=35){
	result = "중등도 비만";
}else if(bmi>=30){
	result = "경도 비만";
}else if(bmi>=25){
	result = "과체중";
}else if(bmi>=18.5){
	result = "정상";
}else{
	result = "저체중";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이름 : <%= name %></h3><br />
	<h3>아이디 : <%= id %></h3><br />
	<h3>비밀번호 : *******</h3><br />
	<h3>주민번호 : <%= ssn %></h3><br />
	<h3>생년월일 : <%= year %>년 <%= month %>월 <%= day %>일생</h3><br />
	<h3>성별 : <%= gender %></h3><br />
	<h3>BMI : <%= result %></h3>
	<a href="login-form.jsp">로그인으로</a>
	<a href="../index.jsp">홈으로</a>
</body>
</html>