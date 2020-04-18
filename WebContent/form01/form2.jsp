<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  String num = request.getParameter("number");
   if (num == null) num = "one";
  %>
 <form method="get">
   <div>
     <select name ="number">
       <option value ="one" <%="one".equals(num) ? "selected" : "" %>>one</option>
       <option value ="two" <%="two".equals(num) ? "selected" : "" %>>two</option>
       <option value ="three" <%="three".equals(num) ? "selected" : "" %>>three</option>
       </select>
   </div>
   <div>
      <input type ="text" name ="number" value="<%= num %>">
    </div>
    <div><button type="submit">확인</button></div>
 
 
 
 
 </form>
</body>
</html>