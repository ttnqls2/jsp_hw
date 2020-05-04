<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style> div { margin-bottom : 10px; }</style>
</head>
<body>
<%
String num = request.getParameter("num");
if (num == null) num = "one";
String cmd = request.getParameter("cmd");
if (cmd == null) cmd = "one";

%>
<div class= "container">
<form>
<div>
<input type="radio" name = "num" value="one" <%="one".equals(num) ? "checked" : ""%>>one</input>
<input type="radio" name = "num" value="two" <%="two".equals(num) ? "checked" : ""%>>two</input>
<input type="radio" name = "num" value="three" <%="three".equals(num) ? "checked" : ""%>>three</input>
</div>
			<div>
				<select name=cmd>
					<option value="<%= num %>" <%="one".equals(cmd) ? "selected" : ""%>>one</option>
					<option value="<%= num %>" <%="two".equals(cmd) ? "selected" : ""%>>two</option>
					<option value="<%= num %>" <%= "three".equals(cmd) ? "selected" : ""%>>three</option>
					
				</select>
			</div>
<div>
<button type = "submit">Ok</button>
</div>
</form>
</div>
</body>
</html>