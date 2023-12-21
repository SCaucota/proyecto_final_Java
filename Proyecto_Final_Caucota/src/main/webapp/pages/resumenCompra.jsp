<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <title>Codo a codo</title>
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
    <main class="main-style" >
        <section class="resumen-section" >
        	<h2>Resumen de Compra</h2>
    		<form action="modificarTicket.jsp" method="post">
	        	<div class="container-datos-resumen" >
	        		<div class="datos-resumen">
	        			<h4>Nombre: </h4>
	        			<p name="nombre"><%= request.getParameter("nombre") %></p>
	        		</div>
	        		<div class="datos-resumen">
	        			<h4>Apellido: </h4>
	        			<p name="apellido"><%= request.getParameter("apellido") %></p>
	        		</div>
	        		<div class="datos-resumen">
	        			<h4>Correo: </h4>
	        			<p name="mail"><%= request.getParameter("mail") %></p>
	        		</div>
	        		<div class="datos-resumen">
	        			<h4>Cantidad De Tickets: </h4>
	        			<p name="cantidad"><%= request.getParameter("cantidad") %></p>
	        		</div>
	        		<div class="datos-resumen">
	        			<h4>Categoría: </h4>
	        			<p name="categoria"><%= request.getParameter("categoria") %></p>
	        		</div>
	        		<div class="datos-resumen">
	        			<h3>Total: </h3>
	        			<p name="total">$<%= request.getParameter("total") %></p>
	        		</div>
	        	</div>
	        	<div class="container_buttons">
	        		<button type="button" onclick="eliminarTicket()" id="borrar" class="btn btn-resumen btn-success" >Eliminar</button>
	                <button type="submit" id="modificar" class="btn btn-resumen btn-success" >Modificar</button>
	        	</div>
	        	<button type="button" onclick="finalizarCompra()" id="finalizar" class="btn btn-resumen btn-success" >Finalizar</button>
	        </form>
        </section>
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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="../js/resumenCompra.js" ></script>
</body>

</html>