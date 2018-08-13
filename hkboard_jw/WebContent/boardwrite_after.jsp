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
<%
	//form --> id=value&name=value&title=value&content=value
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	HkDao dao=new HkDao();
// 	HkDto dto=new HkDto();
// 	dto.setId(id);
// 	dto.setName(name);
// 	dto.setTitle(title);
// 	dto.setContent(content);
// 	boolean isS=dao.insertBoard(dto);//간단하게 값을 넣어줄수 있다 생성자 오버로딩해서 사용하면
	boolean isS=dao.insertBoard(new HkDto(0,id,name,title,content,null));
	
	//글등록 성공/실패여부에 따라 어느페이지로 이동할지 정함
	if(isS){
%>
		<script type="text/javascript">
		alert("새로운 글을 등록합니다");
		location.href="boardlist.jsp";
		</script>
		<% 
	}else{
		%>
		<script type="text/javascript">
		alert("글 등록에 실패하였습니다");
		location.href="boardwrite.jsp";
		</script>
		<% 
	}
%>
</body>
</html>