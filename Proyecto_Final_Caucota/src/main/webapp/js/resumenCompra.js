function eliminarTicket() {
  Swal.fire({
    title: "¿Estas seguro de eliminar la compra?",
    text: "Esta accion no se puede revertir.",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Si, eliminar'
  }).then((result) => {
    if (result.isConfirmed) {
      window.location.href = 'desactivarTicket.jsp';
    }
  });
}

function finalizarCompra() {
  Swal.fire({
    title: 'Compra finalizada',
    text: '¡Gracias por tu compra!',
    icon: 'success'
  }).then(() => {
    window.location.href = '../index.html';
  });
}
