function votar(idOrador) {
    location.href = 'procesoVoto.jsp?id=' + idOrador;
}

function aprobar(idOrador){
	location.href = 'aprobarOrador.jsp?id=' + idOrador;
}

function eliminar(idOrador){
	location.href = 'eliminarOrador.jsp?id=' + idOrador;
}