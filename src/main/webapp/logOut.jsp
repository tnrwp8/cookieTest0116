<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ�</title>
</head>
<body>	
		<%
			Cookie[] cookies = request.getCookies();
		
			if(cookies !=null){
				
				for(int i =0; i<cookies.length;i++){
					
					String cookiValue = cookies[i].getValue();		
					
					if(cookiValue.equals("tiger")){
						out.println(cookiValue +"�� �α׾ƿ��Ͽ����ϴ�");	
						cookies[i].setMaxAge(0);//��Ű�� ���޽ð��� 0���� ����->�α׾ƿ� (��Ű����)
						response.addCookie(cookies[i]);
						}
					}
				}
				response.sendRedirect("cookieTest.jsp");
	%>
		
	
</body>
</html>