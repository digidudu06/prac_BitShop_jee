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
				<form action="account.do">
					예치금 <input type="text" name="money" />
					<input type="submit" id="btn" value="생 성" />
					<input type="hidden" name="cmd" value="open-form"/>
					<input type="hidden" name="page" value="open-result" />
				</form>
			<%-- 	<% String compo = request.getAttribute("compo")+"";
				switch(compo){
				case "open-result": 
					%><%@ include file="open-result.jsp"%><%
					break;
				}%> --%>
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