<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String question = request.getParameter("search_field");
	
	PreparedStatement pstmt = null;
	ResultSet rs= null;
	String sql = "select * from answer where question like=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, question);
	rs=pstmt.executeQuery();
	while(rs.next()){
		rs.getString(1);
		rs.getString(2);
	}
	

%>