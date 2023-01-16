<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 성공</title>
</head>
<body>		
	<%
		Cookie[] cookies = request.getCookies();
	
		for(int i =0; i<cookies.length;i++){
			
			String cookiValue = cookies[i].getValue();
			String cookiName = cookies[i].getName();
			int cookiAge =  cookies[i].getMaxAge();
			
			
			out.println(cookiValue +"<br>");
			out.println("--------------------------<br>");
			out.println(cookiName +"<br>");
			out.println("--------------------------<br>");
			out.println(cookiAge +"<br>");
			out.println("--------------------------<br>");
			
			/* if(cookiValue.equals("tiger")){
				out.println(cookiValue +"님 안녕하세요.로그인 하셨습니다");
			} */
		}
	%>
	<a href = "logOut.jsp"> 로그아웃</a>
</body>
</html>