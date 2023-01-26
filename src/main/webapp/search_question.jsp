<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String question = request.getParameter("search_field");
	
	System.out.println(question);
	PreparedStatement pstmt = null;
	ResultSet rs= null;
	String sql = "select * from answer where question like ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, "%"+question+"%");
	rs=pstmt.executeQuery();
	while(rs.next()){
		String q = rs.getString(1);
		String a = rs.getString(2);
		out.println(q+"/"+a);
	}
	response.sendRedirect("webProject.jsp");

%>