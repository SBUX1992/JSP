<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	request.setCharacterEncoding("utf-8");

	String stdNo	  = request.getParameter("stdNo");
	String stdName	  = request.getParameter("stdName");
	String stdHp	  = request.getParameter("stdHp");
	String stdYear    = request.getParameter("stdYear");
	String stdAddress = request.getParameter("stdAddress");

	// 데이터베이스 처리
		String host = "jdbc:mysql://127.0.0.1:3306/java1_college";
		String user = "root";
		String pass = "1234";
		
		

%>










