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
                <a class="navbar-brand" href="#">Conf Bs As</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" href="#laConferencia">La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#oradores">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#lugarFecha">El lugar y la fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#convertirseOrador">Convi�rtete en orador</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link menu-verde" href="./comprarTickets.html">Comprar tickets</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <section id="laConferencia">
            <div class="conteiner-section1">
                <img class="img-hawaii" src="../img/hawaii.jpg" alt="hawaii section uno">
                <div class="div-texto-section1">
                    <h1>Conf Bs As</h1>
                    <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el
                        conocimiento y experiencia de los expertos que est�n creando el futuro de Internet. Ven a
                        conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de pirmer nivel
                        que tenemos para ti. Te esperamos!</p>
                    <div>
                        <button type="button" class="btn btn-outline-light boton-orador">
                            <a href="#convertirseOrador">Quiero ser Orador</a>
                        </button>
                        <button type="button" class="btn boton-comprar">
                            <a href="comprarTickets.html">Comprar Tickets</a>
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <section id="oradores" class="section-2">
            <div class="div-texto-section-dos">
                <p>CONOCE A LOS</p>
                <h2>ORADORES</h2>
            </div>
            <div class="conteiner-cards">
                <div class="card card-oradores">
                    <img src="../img/steve.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <button type="button" class="btn btn-warning">JavaScript</button>
                        <button type="button" class="btn btn-info">React</button>
                        <h3 class="card-title">Steve Jobs</h3>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam mollitia
                            pariatur
                            ipsam! Expedita at, magni perferendis error est a porro deserunt nisi vero, tenetur
                            voluptates
                            consequatur ratione quidem, culpa impedit.</p>
                    </div>
                </div>
                <div class="card card-oradores">
                    <img src="../img/bill.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <button type="button" class="btn btn-warning">JavaScript</button>
                        <button type="button" class="btn btn-info">React</button>
                        <h3 class="card-title">Bill Gates</h3>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim, repudiandae
                            dolores? Enim laboriosam facilis libero adipisci doloribus fuga ipsum mollitia ea, beatae
                            itaque est repellat officia similique voluptatem perferendis sunt.</p>
                    </div>
                </div>
                <div class="card card-oradores">
                    <img src="../img/ada.jpeg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <button type="button" class="btn btn-secondary boton-general">Negocios</button>
                        <button type="button" class="btn btn-danger boton-general">Startups</button>
                        <h3 class="card-title">Ada Lovelace</h3>
                        <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis iste et
                            quis porro? Voluptatem, incidunt? Sunt quam, ipsa optio, ullam maiores saepe quibusdam sit
                            fugiat, dolor fuga sint sapiente corporis.</p>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div id="lugarFecha" class="container-section-3">
                <div class="div-img-honolulu">
                    <img src="../img/honolulu.jpg" alt="">
                </div>
                <div class="div-texto-section-3 bg-dark">
                    <h4>Bs As - Octubre</h4>
                    <p>Buenos Aires es la provincia y localidad m�s grande del estado de
                        Argentina, en los Estados Unidos. Honolulu es la m�s sure�a de entre las principales
                        ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al �rea urbana en la
                        costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una
                        ciudad-condado condolidada que cubre toda la ciudad (aproximadamente 600 km2 de
                        supreficie).</p>
                    <button type="button" class="btn btn-outline-light">Conoc� m�s</button>
                </div>
            </div>
        </section>

        <section id="convertirseOrador" class="section-4">
            <div class="div-texto-section-4">
                <p class="titulo-p">CONVI�RTETE EN UN</p>
                <h4>ORADOR</h4>
                <p>An�tate como orador para dar una charla ignite. Cu�ntanos de qu� quieres hablar!</p>
            </div>
            <form class="form-orador" action="">
                <div class="div-nombre-apellido">
                    <div class="mb-3 input-nombre inputs-form ">
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Nombre">
                    </div>
                    <div class="mb-3 inputs-form">
                        <input type="text" class="form-control " id="exampleInputPassword1" placeholder="Apellido">
                    </div>
                </div>
                <div class="mb-3">
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Sobre qu� quieres hablar?"></textarea>
                    <div id="emailHelp" class="form-text">Recuerda incluir un t�tulo para tu charla</div>
                </div>
                <div class="col-12 col-md-4">
                  <button class="btn btn-compra" type="reset">Borrar</button>
                </div>
                <button type="submit" class="btn btn-success">Enviar</button>
            </form>
        </section>
    </main>
    <footer class="footer">
        <a class="a-footer" href="#">Preguntas frecuentes</a>
        <a class="a-footer" href="#">Conct�nos</a>
        <a class="a-footer" href="#">Prensa</a>
        <a class="a-footer" href="#">Conferencias</a>
        <a class="a-footer" href="#">T�rminos y condiciones</a>
        <a class="a-footer" href="#">Privacidad</a>
        <a class="a-footer-estudiantes" href="#">Estudiantes</a>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
</body>

</html>