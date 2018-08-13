<%@page import="com.hk.dtos.HkDto"%>
<%@page import="java.util.List"%>
<%@page import="com.hk.daos.HkDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글목록 리스트</title>
<script type="text/javascript">
</script>
<style type="text/css">
</style>
</head>
<%
	//java코드 작성 영역(실행부) : 포탈이 열렸어요
	HkDao dao=new HkDao();
	List<HkDto> list=dao.getAllBoard();
%>
<body>
<h1>글목록보기</h1>
<table border="1">
	<col width="50px"><col width="100px">
	<col width="300px"><col width="100px">
	<tr>
		<td>번호</td>
		<td>아이디</td>
		<td>제목</td>
		<td>작성자</td>
	</tr>
	<%
		for(int i = 0; i < list.size(); i++){
		HkDto dto=list.get(i);
	%>
	<tr>
		<td><%=dto.getSeq()%></td>
		<td><%=dto.getId()%></td>
		<td><a href="boarddetail.jsp?seq=<%=dto.getSeq()%>"><%=dto.getTitle()%></a></td>
		<td><%=dto.getRegdate()%></td>
	</tr>	
	<%
	}	
	%>
	<tr>
		<td colspan="4">
			<a href="boardwrite.jsp">글쓰기</a>
		</td>
	</tr>
</table>
</body>
</html>