<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String name = "";
    int radio = 0;
    String 에러메시지 = null;
    
    request.setCharacterEncoding("UTF-8");
    if (request.getMethod().equals("POST")) {

        name = request.getParameter("name");
        String r = request.getParameter("sex");
      
        

        if (name == null || name.length() == 0) 
            에러메시지 = " 이름을 입력하세요";
        else if (r == null || sex == 0) 
            에러메시지 = "성별을 입력하세요";

    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style> body { font-family: 굴림체; font-size: 10pt; }

  form, form div { margin-bottom: 20px; }
  label { display: block; } 
   div.error { margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa; }
  table { border-collapse : collapse; }
  td { border : 1px solid; padding : 3px; width: 100px; }  </style>
</head>
<body>
<div class="container">


<form method="post">
  <h1>회원 등록</h1>
  <div>
    <label>이름</label>
    <input type="text" class="text" name="name" value="<%= name %>" />
  </div>


  <div>
    <label>성별</label>
    <input type = "radio"  name="sex" value = "남자">남자</input><br />
        <input type = "radio"  name="sex" value = "여자">여자</input>

  </div>
  

  <button type="submit" class="btn"> 회원 등록
  </button>
</form>

<% if (에러메시지 != null) { %>
  <div class="error">
    회원등록 실패: <%= 에러메시지 %>
  </div>
<% } %>
</div>

<table>
 <tr> <td>이름</td>
<td> <%= request.getParameter("name") %> </td> </tr>
 <tr> <td>성별</td>
<td> <%= request.getParameter("sex") %> </td> </tr>

</table>

</body>
</html>