<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.google.gson.Gson" %>   
<%@ page import="java.util.List, java.util.Map" %>   
<%
//파일명 - jsonUseHistory.jsp
	List<Map<String,Object>> useList = (List<Map<String,Object>>)request.getAttribute("useList");
	if(useList!=null){
		Gson g = new Gson();
		String jsonFor = g.toJson(useList);
		out.print(jsonFor);
	}
%>