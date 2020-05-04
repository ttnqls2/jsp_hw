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

%>
<div class= "container">
<form>
<div>
<input type="radio" name = "num" value="one" <%="one".equals(num) ? "checked" : ""%>>one</input>
<input type="radio" name = "num" value="two" <%="two".equals(num) ? "checked" : ""%>>two</input>
<input type="radio" name = "num" value="three" <%="three".equals(num) ? "checked" : ""%>>three</input>
</div>
<div>
<input type = "text" name = "number" value ="<%= num %>"/>
</div>
<div>
<button type = "submit">Ok</button>
</div>
</form>
</div>
</body>
</html>