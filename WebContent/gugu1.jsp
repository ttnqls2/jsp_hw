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
<%
for (int i=1; i <= 9; ++i) { 
    out.println("  <tr>");
    for (int j=2; j <= 9; ++j) {
        out.println("    <td>");
        out.print(j+"x"+i);
        out.print("=");
        out.print(i*j);
        out.println("</td>");
    }
    out.println("  </tr>");
  }
%>
</tr>
</table>

</body>
</html>