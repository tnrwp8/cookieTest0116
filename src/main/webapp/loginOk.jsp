<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�α��� ����</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	
	
	String MemberID = request.getParameter("mid");
	String MemberPW = request.getParameter("mpw");
	
	if(MemberID.equals("tiger")&&(MemberPW.equals("12345"))){
	
		Cookie cookie = new Cookie("MemberID",MemberID);
		Cookie cookie2 = new Cookie("MemberPW",MemberPW);
		cookie.setMaxAge(3600);//��Ű�� ��ȿ�ð� ����(�ʴ���)
		
		
		response.addCookie(cookie);
		response.addCookie(cookie2);
		response.sendRedirect("welecom.jsp");
	}else{
		response.sendRedirect("loginFale.jsp");
	}
%>
</body>
</html>