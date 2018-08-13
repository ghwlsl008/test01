<%@page import="com.hk.dtos.HkDto"%>
<%@page import="com.hk.daos.HkDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//title, content, seq 가 전송되고, 이 값들을 받는다.
   String title=request.getParameter("title");
   String content=request.getParameter("content");
   int seq=Integer.parseInt(request.getParameter("seq"));
   
   HkDao dao = new HkDao();
   boolean isS= dao.updateBoard(new HkDto(seq,title,content));
   
   //java에서 페이지 이동할때 사용되는 메서드 2개 (sendRedirect(), forward())
   if(isS){
      response.sendRedirect("boarddetail.jsp?seq="+seq);
   }else{
      response.sendRedirect("boardupdate.jsp?seq="+seq);
   }
%>
</body>
</html>