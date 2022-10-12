<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>register</title>
	</head>
	<body>
		<h3>Student 등록하기</h3>
		<a href="./registerProc.jsp"></a>
		<form action="#">
			<table border="1">
				<tr>
					<td>학번</td>
					<td><input type="number" name="stdNo"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="stdName"></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="stdHp"></td>
				</tr>
				<tr>
					<td>연도</td>
					<td><input type="text" name="stdYear"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="atdAddress"></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="등록">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>