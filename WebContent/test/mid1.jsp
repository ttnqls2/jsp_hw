<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table { border-collapse: collapse;
margin-top : 5px; }
td { border : 1px solid ; width : 140px; padding : 5px;
  }
</style>
</head>
<body><% 
String n = request.getParameter("num");
if(n== null) n="0";
int num = Integer.parseInt(n);

%>
<div class = "container">
<form>
<div>
<input type = "text" name = "num" value ="<%= num %>"/>
<button type = "submit">단</button></div>
</form>
<table>
<% for(int i = 1; i <= 9; ++i) { %>
<tr>
<td> <%= num %>x<%= i %>=<%= num * i %>
</td>
</tr>
<% } %>

</table>
</div>
</body>
</html>