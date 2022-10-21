<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	request.setCharacterEncoding("UTF-8");
	
	String bookId    = request.getParameter("bookId");
	String bookname  = request.getParameter("bookname");
	String publisher = request.getParameter("publisher");
	String price     = request.getParameter("price");
	
	try{
		Context initCtx = new InitialContext();
		Context ctx = (Context)initCtx.lookup("java:comp/env/"); 
		
		DataSource ds = (DataSource) ctx.lookup("dbcp_java1_bookstore");
		Connection conn = ds.getConnection(); // 커넥션 가져오기
		
		String sql = "INSERT INTO `book` VALUES (?, ?, ?, ?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, bookId);
		psmt.setString(2, bookname);
		psmt.setString(3, publisher);
		psmt.setString(4, price);

		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("./list.jsp");
%>