<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../home/head.jsp" %>
<body>
<table id="wrapper">
	<tr>
		<td colspan="2">
			<%@ include file="../home/header.jsp" %>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<%@ include file="../home/navi-bar.jsp" %>
		</td>
	</tr>
	<tr  style="height: 300px">
		<td id="side-menu">
			<%@ include file="side-menu.jsp" %>
		</td>
		<td>
			<div id="content">
				<h1>계좌정보</h1>
				<%String accNum = request.getAttribute("accNum")+""; %>
				<h4>계좌번호 : <%= accNum %></h4>
				<%String money = request.getAttribute("money")+"";%>
				<h4>잔      액 : <%= money %>원</h4>
				<%String today = request.getAttribute("today")+"";%>
				<h4>개 설 일 : <%= today %></h4>
			</div>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<%@ include file="../home/footer.jsp" %>
		</td>
	</tr>
</table>
</body>
</html>