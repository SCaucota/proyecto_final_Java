<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import = "pf.integrador.java.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <title>Compra Tickets - Codo a Codo</title>
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
    <%
	    Connection cn = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    
		try{
	 
			cn = MySqlConexion.conectar();
			
			ps = cn.prepareStatement("SELECT * FROM ticket WHERE id = (SELECT MAX(id) FROM ticket)");
	 
			rs = ps.executeQuery();
			
	%>
        <section class="descuentos-section">
            <div class="descuento estudiante">
                <h2>Estudiante</h2>
                <h5>Tienen un descuento</h5>
                <h3>80%</h3>
                <p>*presentar documentación</p>
            </div>
        
            <div class="descuento trainee">
                <h2>Trainee</h2>
                <h5>Tienen un descuento</h5>
                <h3>50%</h3>
                <p>*presentar documentación</p>
            </div>
        
            <div class="descuento junior">
                <h2>Junior</h2>
                <h5>Tienen un descuento</h5>
                <h3>15%</h3>
                <p>*presentar documentación</p>
            </div>
        </section>
        <section class="venta-tickets-section" >
            <p>VENTA</p>
            <h1>VALOR DE TICKET $200</h1>
            <form id="form" action="cambiarInfoTicket.jsp" class="contenedor-form">
            <%if(rs.next()){%>
                <div class="dos-elementos" >
                    <div id="divNombre">
                        <input id="nombre" value="<%= rs.getString("nombre") %>" name="nombre" type="text" placeholder="Nombre">
                    </div>
                    <div id="divApellido">
                        <input id="apellido" value="<%= rs.getString("apellido") %>"name="apellido" type="text" placeholder="Apellido">
                    </div>
                    
                </div>
                <div id="divCorreo">
                    <input id="correo" value="<%= rs.getString("mail") %>" name="mail" type="email" placeholder="Correo">
                </div>
                <div class="dos-elementos">
                    <div id="divCantidad" >
                        <label for="cantidad">Cantidad</label>
                        <input id="cantidad" value="<%= rs.getInt("cantidad") %>" name="cantidad" type="number" placeholder="Cantidad">
                    </div>
                    <div id="divCategoria" >
                        <label for="categoria">Categoría</label>
                        <select name="categoria" id="categorias">
                        	<option value="0" selected><%= rs.getString("categoria") %></option>
                            <option value="Estudiante">Estudiante</option>
                            <option value="Trainee">Trainee</option>
                            <option value="Junior">Junior</option>
                        </select>
                    </div>
                </div>
            <%} %>
                <div class="total" >
                	Total a Pagar: <span id="total" ></span>
            	</div>
            	<div class="button-container-b-r">
                	<button type="reset" id="borrar" class="btn btn-success" >Borrar</button>
                	<button type="button" id="resumen" class="btn btn-success" >Resumen</button>
            	</div>
            	<div class="container-button-comprar">
            		<button type="submit" class="btn btn-success" >Modificar</button>
            	</div>
            </form>
        </section>
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
        
    <script src="../js/ticketsForm.js" ></script>
</body>

</html>