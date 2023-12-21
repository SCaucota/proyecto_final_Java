<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	int cantidad = Integer.parseInt(request.getParameter("cantidad"));
	String categoria = request.getParameter("categoria");
	int total = Integer.parseInt(request.getParameter("total"));
	
	Connection cn = MySqlConexion.conectar();
	
	
	try{
		
		Statement stm = cn.createStatement();
		
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
		
		while(rsId.next()){
			int idMax = rsId.getInt(1);
			
			String query = "UPDATE ticket SET nombre='"+nombre+"',apellido='"+apellido+"', mail='"+mail+"', cantidad='"+cantidad+"', categoria='"+categoria+"', total='"+total+"' WHERE id='"+idMax+"'";
			
			stm.executeUpdate(query);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:forward page = "resumenCompra.jsp"></jsp:forward>

</body>
</html>