<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그아웃</title>
</head>
<body>	
		<%
			Cookie[] cookies = request.getCookies();
		
			if(cookies !=null){
				
				for(int i =0; i<cookies.length;i++){
					
					String cookiValue = cookies[i].getValue();		
					
					if(cookiValue.equals("tiger")){
						out.println(cookiValue +"님 로그아웃하였습니다");	
						cookies[i].setMaxAge(0);//쿠키의 유휴시간을 0으로 설절->로그아웃 (쿠키삭제)
						response.addCookie(cookies[i]);
						}
					}
				}
				response.sendRedirect("cookieTest.jsp");
	%>
		
	
</body>
</html>