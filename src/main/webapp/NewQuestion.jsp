<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="dbconn.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%
request.setCharacterEncoding("utf-8");
String n_question = request.getParameter("question");
String n_answer = request.getParameter("answer");

PreparedStatement pstmt = null;
String sql = "insert into answer values(?,?)";
pstmt = conn.prepareStatement(sql);

pstmt.setString(1, n_question);
pstmt.setString(2, n_answer);
pstmt.executeUpdate();
System.out.println("등록 완료");

if(pstmt != null)pstmt.close();
if(conn != null)conn.close();

response.sendRedirect("webProject.jsp");
%>