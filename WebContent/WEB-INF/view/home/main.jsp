<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="head.jsp" %>
<body>
<table id="wrapper">
	<tr>
		<td colspan="2">
			<%@ include file="header.jsp" %>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<%@ include file="navi-bar.jsp" %>
		</td>
	</tr>
	<tr style="height: 300px">
		<td id="side-menu">
			<%@ include file="side-menu.jsp" %>
		</td>
		<td>
			<div id="content">
				<% String compo = request.getAttribute("compo")+"";
					switch(compo){
					case "login-success": 
						%><%@include file="login-success.jsp" %><%
						break;
					}
				%>
			</div>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<%@ include file="footer.jsp" %>
		</td>
	</tr>
</table>
</body>
</html>