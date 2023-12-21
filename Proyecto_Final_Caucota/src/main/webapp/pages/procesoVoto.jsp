<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import = "pf.integrador.java.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int idOrador = Integer.parseInt(request.getParameter("id"));

	Connection cn = MySqlConexion.conectar();
	
	try{
		PreparedStatement ps = cn.prepareStatement("UPDATE orador SET votos = votos + 1 WHERE id = ?");
		
		ps.setInt(1, idOrador);
		
		ps.executeUpdate();
		
		ps.close();
		cn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("listaOradores.jsp");
%>
</body>
</html>