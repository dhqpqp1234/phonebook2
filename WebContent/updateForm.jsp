<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "com.javaex.dao.PhoneDao" %>
    <%@ page import = "com.javaex.vo.PersonVo" %>
    <%	
    	
  //파라미터 꺼내기
  	int id = Integer.parseInt(request.getParameter("id"));
  	System.out.println(id);
  	//id의 데이터 가져오기
  	PhoneDao phoneDao = new PhoneDao();
  	PersonVo personVo = phoneDao.getPerson(id);
  	System.out.println(personVo);
    
    	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>전화번호부</h1>
    
    
    <h2>등록폼</h2>
    <p>전화번호를 등록하려면 <br>
       "수정" 버튼을 클릭하세요
    </p>
    <form action="./pbc?action=updateForm" method="get">
       
       id<input type = "text" name="id" value ="<%=personVo.getPersonId() %>"><br>
       이름<input type = "text" name="name" value="<%=personVo.getName() %>"> <br>
       핸폰<input type = "text" name="hp" value="<%=personVo.getHp() %>"><br>
       회사<input type = "text" name="company" value="<%=personVo.getCompany() %>"><br>
       <input type = "hidden" name="action" value="update">
       <button type="submit">수정</button>
    </form>
	
</body>
</html>