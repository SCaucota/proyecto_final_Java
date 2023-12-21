<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "pf.integrador.java.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cargando Informacion</title>
</head>
<body>

<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	int telefono = Integer.parseInt(request.getParameter("telefono"));
	String tema = request.getParameter("tema");
	String descripcion = request.getParameter("descripcion");
	
	String sql = "INSERT INTO orador(nombre, apellido, mail, telefono, tema, descripcion) VALUES('"+nombre+"','"+apellido+"', '"+mail+"', '"+telefono+"', '"+tema+"', '"+descripcion+"')";
	
	Connection cn = MySqlConexion.conectar();
	
	try{
		Statement stm = cn.createStatement();
		
		stm.executeUpdate(sql);
		
		stm.close();
		cn.close();
	}catch(Exception e){
		out.println("No se enviaron los datos");
		e.printStackTrace();
	}
	
	response.sendRedirect("listaOradores.jsp");
%>

</body>
</html>