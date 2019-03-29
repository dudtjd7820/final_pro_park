<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.google.gson.Gson" %>   
<%@ page import="java.util.List, java.util.Map" %>   
<%
//파일명 - jsonBoardList.jsp
	List<Map<String,Object>> boardList = 
	                       (List<Map<String,Object>>)request.getAttribute("boardList");
	if(boardList!=null){
		Gson g = new Gson();
		String jsonFor = g.toJson(boardList);
		out.print(jsonFor);
	}
%>