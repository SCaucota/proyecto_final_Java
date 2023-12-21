<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="pf.integrador.java.MySqlConexion" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
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
    <main class="main-oradores">
    <%
    Connection cn = null;
    PreparedStatement psAprobados = null;
    PreparedStatement psNoAprobados = null;
    ResultSet rsAprobados = null;
    ResultSet rsNoAprobados = null;

    try {
        cn = MySqlConexion.conectar();

        psAprobados = cn.prepareStatement("SELECT * FROM orador WHERE aprobado='1'");
        psNoAprobados = cn.prepareStatement("SELECT * FROM orador WHERE aprobado='0'");

        rsAprobados = psAprobados.executeQuery();
        rsNoAprobados = psNoAprobados.executeQuery();
            
        
     %>
        <section class="oradores-section" >
        	<div class="div-btn-admin">
        		<button class="btn btn-warning" onclick="location.href='adminOradores.jsp'" >Soy Admin</button>
        	</div>
			<% if (rsAprobados.next()) { %>
			
				<h2 class="aprobados-titulo" >Próximos Oradores</h2>
        		<div class="div-aprobados">
				<% do { %>
				  <div class="card" style="width: 18rem;">
				     <div class="card-body">
				        <h5 class="card-title nombreOrador"><%= rsAprobados.getString("nombre") %> <%= rsAprobados.getString("apellido") %></h5>
				        <h6 class="card-text">Tema: <%= rsAprobados.getString("tema") %></h6>
				        <p class="card-text"><%= rsAprobados.getString("descripcion") %></p>
				     </div>
				  </div>
				<% } while (rsAprobados.next()); %>
				</div>
			<% }%>
			
        	<h2>Vota A Futuros Oradores</h2>
        	<p>Vota a los oradores y ayudalos a ser más elegibles para presentar sus temas</p>
        	<div class="div-no-aprobados">
        	<%while(rsNoAprobados.next()){%>
        		<div class="card" style="width: 18rem;">
				  <div class="card-body">
				    <h5 class="card-title nombreOrador"><%= rsNoAprobados.getString("nombre")%> <%= rsNoAprobados.getString("apellido")%></h5>
				    <h6 class="card-text">Tema: <%= rsNoAprobados.getString("tema")%></h6>
				    <p class="card-text"><%= rsNoAprobados.getString("descripcion")%></p>
				    <span class="card-text">Votos: <%= rsNoAprobados.getInt("votos") %></span>
				    <input type="hidden" name="id" value="<%= rsNoAprobados.getInt(1) %>" class="form-control" id="emailInputOrador">
				    <div class="div-btn-votar">
				    	<button id="botton-votar" onclick="votar(<%= rsNoAprobados.getInt(1) %>)" class="btn btn-primary">Votar</button>
				    </div>
				  </div>
				</div>
			<%}%>
			</div>
        </section>
    <%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rsAprobados != null) {
                rsAprobados.close();
            }
            if (rsNoAprobados != null) {
                rsNoAprobados.close();
            }
            if (psAprobados != null) {
                psAprobados.close();
            }
            if (psNoAprobados != null) {
                psNoAprobados.close();
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
    <footer class="footer">
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
   	<script src="../js/oradores.js" ></script>
</body>

</html>