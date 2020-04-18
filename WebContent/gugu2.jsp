<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table{ border-collapse: collapse; }
td{ border:1px solid gray; padding: 3px; }
</style>
</head>
<body>

<table>
 <tr>
<%
for (int i=2; i <= 9; ++i) {
	 out.println("  <td>");
    for (int j=1; j <= 9; ++j) {
        
        out.print(i+"x"+j);
        out.print("=");
        out.print(i*j+"<br>");
    }
        out.println("  </td>");} %>
    </tr>

</table>

</body>
</html>