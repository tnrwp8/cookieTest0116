<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ����</title>
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
				out.println(cookiValue +"�� �ȳ��ϼ���.�α��� �ϼ̽��ϴ�");
			} */
		}
	%>
	<a href = "logOut.jsp"> �α׾ƿ�</a>
</body>
</html>