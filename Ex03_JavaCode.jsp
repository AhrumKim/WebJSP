<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*  
		응답(서버 >> 클라이언트에게)
		1. <%=
		2. <% out객체 사용
	
		장단점 이해
		
	*/

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼합된 코드(서버코드(동적) + UI(정적))</title>
</head>
<body>
	<h3>스파게티 코드 (UI 작업)</h3>
	<%
		boolean b = true;
		if(10 > 5){
	%>
		if(true)<font color="red"><%=b%></font>
	<%		
		}else{
			b = false;
	%>
		if(false)<font color="blue"><%=b%></font>
	<%		
		}
	%>
	<h3>out 객체 (서버코드 작업 print)</h3>
	<%
		boolean b2 = true;
		if(10 > 5){
			out.print("IF(true)<font color='red'>" + b2 + "</font>");
		}else{
			b2 = false;
			out.print("IF(true)<font color='blue'>" + b2 + "</font>");
		}
	
	%>
</body>
</html>

