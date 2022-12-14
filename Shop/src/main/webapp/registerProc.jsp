<%@page import="db.DBCP"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String proNo = request.getParameter("proNo");
	String proCount = request.getParameter("proCount");
	String proOrderer = request.getParameter("proOrderer");

	int result = 0;
	
	try{
		Connection conn = DBCP.getConnection();
		String sql = "insert into `order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) ";
			   sql += "values (?, ?, ?, NOW())";
			   
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, proOrderer);
		psmt.setString(2, proNo);
		psmt.setString(3, proCount);
		
		result = psmt.executeUpdate();
		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// JSON 출력
	JsonObject json = new JsonObject();
	json.addProperty("result", result);
	
	String jsonData = json.toString();
	out.print(jsonData);
%>


