<%@page import="com.hk.dtos.HkDto"%>
<%@page import="com.hk.daos.HkDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 전달된 파라미터seq를 받는다  
     dao에 있는 deleteBoard()메서드 사용
     삭제성공시 boardlist.jsp로 
     실패시 boarddetail.jsp로 이동하시오  -->
<%
	//title, content, seq 가 전송되고, 이 값들을 받는다.
   int seq=Integer.parseInt(request.getParameter("seq"));
   
   HkDao dao = new HkDao();
   boolean isS= dao.deleteBoard(seq);
   
   //java에서 페이지 이동할때 사용되는 메서드 2개 (sendRedirect(), forward())
   if(isS){
      response.sendRedirect("boardlist.jsp");
   }else{
      response.sendRedirect("boarddeatail.jsp?seq="+seq);
   }
%>
</body>
</html>