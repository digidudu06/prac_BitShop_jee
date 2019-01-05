<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="content">
	<%String name = request.getAttribute("name")+"";
	if(name.equals("testName")){
		%><%= name %>님 로그인 성공<%
	} %>
</div>