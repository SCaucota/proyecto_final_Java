<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="pf.integrador.java.MySqlConexion" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" >
    <link rel="stylesheet" href="../css/style.css">
    <title>Otros Oradores - Codo a Codo</title>
</head>

<body>
	<header>
        <nav class="navbar navbar-expand-lg bg-dark">
            <div class="container-fluid">
                <img src="../img/codoacodo.png" alt="codoacodologo">
                <a class="navbar-brand" href="../index.html">Conf Bs As</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">El lugar y la fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Conviértete en orador</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link menu-verde" href="./comprarTickets.html">Comprar tickets</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
	<main class="main-lista-oradores">
		<%
			
			Connection cn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try{
				cn = MySqlConexion.conectar();
				
				ps = cn.prepareStatement("SELECT * FROM orador");
				
				rs = ps.executeQuery();
		%>
		<div class="tabla-container">
			<table class="table table-dark table-bordered border-secondary pt-4">
				<thead>
					<tr>
						<th class="table-dark text-center">id</th>
						<th class="table-dark text-center">Nombre</th>
						<th class="table-dark text-center">Apellido</th>
						<th class="table-dark text-center">Email</th>
						<th class="table-dark text-center">Telefono</th>
						<th class="table-dark text-center">Tema</th>
						<th class="table-dark text-center">Descripcion</th>
						<th class="table-dark text-center">Votos</th>
						<th class="table-dark text-center">Aprobado</th>
						<th class="table-dark"></th>
						<th class="table-dark"></th>
					</tr>
				</thead>
				<% while (rs.next()){%>
				<tr>
					<td class="text-center align-middle" ><%= rs.getInt(1) %></td>
					<td class="text-center align-middle"><%= rs.getString(2) %></td>
					<td class="text-center align-middle"><%= rs.getString(3) %></td>
					<td class="text-center align-middle"><%= rs.getString(4) %></td>
					<td class="text-center align-middle"><%= rs.getString(5) %></td>
					<td class="text-center align-middle"><%= rs.getString(6) %></td>
					<td class="text-center align-middle descripcion"><%= rs.getString(7) %></td>
					<td class="text-center align-middle"><%= rs.getString(8) %></td>
					<td class="text-center align-middle"><%= rs.getString(9) %></td>
					<td class="align-middle">
						<button onclick="eliminar(<%= rs.getInt(1) %>)" class="btn btn-danger" >Eliminar</button>
					</td>
					<td class="align-middle">
					 	<button onclick="aprobar(<%= rs.getInt(1) %>)" class="btn btn-primary"
						 	<%= rs.getInt("aprobado") == 1 ? "disabled" : "" %>>
	                        <%= rs.getInt("aprobado") == 1 ? "Aprobado" : "Aprobar" %>
                    	</button>
					</td>
				</tr>
				<%} %>
			</table>
		</div>
		
		<%
			} catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        try {
		            if (rs != null) {
		                rs.close();
		            }
		            if (ps != null) {
		                ps.close();
		            }
		            if (cn != null) {
		                cn.close();
		            }
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }
		%>
	</main>
	<footer class="footer-lista-oradores">
        <a class="a-footer" href="#">Preguntas frecuentes</a>
        <a class="a-footer" href="#">Conctános</a>
        <a class="a-footer" href="#">Prensa</a>
        <a class="a-footer" href="#">Conferencias</a>
        <a class="a-footer" href="#">Términos y condiciones</a>
        <a class="a-footer" href="#">Privacidad</a>
        <a class="a-footer-estudiantes" href="#">Estudiantes</a>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
   	<script src="../js/votoOradores.js" ></script>
</body>
</html>