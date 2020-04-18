<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<% String num = request.getParameter("number");
   int number = (num == null) ? 0 : Integer.parseInt(num);
   String cmd = request.getParameter("cmd");
   if ("+".equals(cmd)) number = number+1;
 %>
 
    <form action=form1.jsp method="get"> 
     <div>
       <input type="text" name="number" value="<%= number %>" />
       </div>
       <div>
       <button type="submit" name="cmd" value="+" >++</button>
      </div>
    
     </form>
   
</body>
</html>