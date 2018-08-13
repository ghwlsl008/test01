<%@page import="com.hk.daos.HkDao"%>
<%@page import="com.hk.dtos.HkDto"%>
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
<title>글 상세보기</title>
</head>
<body>
<%
	//	//선언부: 메서드를 정의하는 부분
//	public int parseIntVal(String num){
//	return Integer.parseInt(num);
//}
//
%>
<%
	//scriptlet(스크립트렛): 자바코드가 실행되는 부분(실행부)
	//전달되는 파라미터는 무조건 텍스트이다
	String sseq=request.getParameter("seq"); //boardlist.jsp에서 전달한 seq파라미터 받기
	int seq=Integer.parseInt(sseq); //int형으로 변환(주의: "숫자"형이야함.  만약 "문자"-->int형 변환X)	
	
	HkDao dao=new HkDao();
	HkDto dto=dao.getBoard(seq); //js: parseInt("5")-->진짜 숫자(정수)타입을 변환
%>

<h1>글 상세보기</h1>
<table border="1">
	<tr>
		<th>번호</th>
		<td><%=dto.getSeq()%></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><%=dto.getName()%></td>
	</tr>
	<tr>
		<th>작성일</th>
		<td><%=dto.getRegdate()%></td>
	</tr>
	<tr>
		<th>제목</th>
		<td><%=dto.getTitle()%></td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
			<textarea rows="10" cols="60" readonly="readonly"><%=dto.getContent()%></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="수정" onclick="location.href='boardupdate.jsp?seq=<%=dto.getSeq()%>'"/>
			<input type="button" value="삭제" onclick="location.href='boarddelete.jsp?seq=<%=dto.getSeq()%>'"/>
			<input type="button" value="목록" onclick="location.href='boardlist.jsp'"/>
		</td>
	</tr>
</table>
</body>
</html>