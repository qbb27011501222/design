<%@page import="java.io.*"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String accountNumber = request.getParameter("accountNumber");
		String password = request.getParameter("password");
		String userName = "";
		boolean flage = false;
		try {
			Scanner sc = new Scanner(new File("C:\\Users\\贝贝\\eclipse-workspace\\register-login\\WebContent\\contains\\userlist.txt"));
			while (sc.hasNextLine()) {
				String line = sc.nextLine();
				String[] ss = line.split("\\s+");
				if (ss[0].equals(accountNumber) && ss[1].equals(password)) {
					flage = true;
					userName = ss[2];
					break;
				}
			}
			sc.close();
		} catch (Exception e) {
		}
		if (flage) {
			session.setAttribute("accountNumber", accountNumber);
			response.sendRedirect("loginSuccessfully.jsp?userName=" + userName);
		} else {
			response.sendRedirect("login.html");
		}
	%>
</body>
</html>