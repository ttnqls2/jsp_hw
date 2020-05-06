<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
String srchText = request.getParameter("srchText");
if (srchText == null ) srchText = "";
List<Book> list = BookDAO.findByName(srchText);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
div.container {
	width: 600px;
	margin: 50px auto;
}

thead th {
	background-color: #eee;
}

table {
	border-collapse: collapse;
	width: 100%;
}

td, th {
	padding: 4px;
	border: 1px solid lightgray;
}

td:nth-child(4) {
	text-align: center;
}
input { padding : 5px; }
</style>
</head>
<body>
	<div class="container">
	<form>
	<label>저자</label>
	<input type = "text" name = "srchText" value = "<%= srchText %>" placeholder = " 검색조건" />
	<button type = "submit" >조회</button></form>

		<h1>책목록</h1>

		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>id</th>
					<th>제목</th>
					<th>저자</th>
					<th>카테고리</th>
					<th>가격</th>
					<th>출판사</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (Book book : list) {
				%>
				<tr>
					<td><%=book.getId()%></td>
					<td><%=book.getBook()%></td>
					<td><%=book.getName()%></td>
					<td><%=book.getCategory()%></td>
					<td><%=book.getPrice()%></td>
					<td><%=book.getPublisher()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>

	</div>
</body>
</html>