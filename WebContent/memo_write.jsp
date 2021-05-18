<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="java.util.ArrayList" %>  
<%@ page import="twoline.OnelineDTO" %>
<%@ page import="twoline.OnelineDAO" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
OnelineDAO dao = new OnelineDAO();
ArrayList<OnelineDTO> dtos = dao.getList();
%>
<body>
<% request.setCharacterEncoding("UTF-8");
String memo = request.getParameter("memo");
OnelineDAO da = new OnelineDAO();
OnelineDTO dto = new OnelineDTO();
dto.setMemo(memo);
dao.insert(dto);
response.sendRedirect("memo_list.jsp");
%>
</body>
</html>



