const divNombreInput = document.getElementById("divNombre")
const divApellidoInput = document.getElementById("divApellido")
const divCorreoInput = document.getElementById("divCorreo")
const divCantidadInput = document.getElementById("divCantidad")
const divCategoria = document.getElementById("divCategoria")

const nombreInput = document.getElementById("nombre");
const apellidoInput = document.getElementById("apellido");
const correoInput = document.getElementById("correo");
const cantidadInput = document.getElementById("cantidad");
const categoriaSelect = document.getElementById("categorias");

const form = document.getElementById("form");
const totalSpan = document.getElementById("total");

const nombreApellidoExpresion = /^[A-Za-z\s'-]+$/;
const correoExpresion = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
const cantidadExpresion = /^(0|[1-9]\d*)(\.\d+)?$/;


const nombreError = document.createElement("p");
const apellidoError = document.createElement("p");
const correoError = document.createElement("p");
const cantidadError = document.createElement("p");
const categoriaError = document.createElement("p");




function verificacion() {

    let isValid = true;

    if (!nombreApellidoExpresion.test(nombreInput.value)) {
        isValid = false;
        nombreError.textContent = 'Nombre inválido';
        nombreError.style.color = "red";
        divNombreInput.appendChild(nombreError);
    } else {
        nombreError.remove();
    }

    if (!nombreApellidoExpresion.test(apellidoInput.value)) {
        isValid = false;
        apellidoError.textContent = 'Apellido inválido';
        apellidoError.style.color = "red";
        divApellidoInput.appendChild(apellidoError);
    } else {
        apellidoError.remove();
    }

    if (!correoExpresion.test(correoInput.value)) {
        isValid = false;
        correoError.textContent = 'Correo inválido';
        correoError.style.color = "red";
        divCorreoInput.appendChild(correoError);
    } else {
        correoError.remove();
    }

    if (!cantidadExpresion.test(cantidadInput.value)) {
        isValid = false;
        cantidadError.textContent = 'Cantidad inválida';
        cantidadError.style.color = "red";
        divCantidadInput.appendChild(cantidadError);
    } else {
        cantidadError.remove();
    }
    
    if(categoriaSelect.value === "0"){
        console.log(categoriaSelect.value);
		isValid = false;
		categoriaError.textContent = "Elija una categoria";
		categoriaError.style.color = "red";
		divCategoria.appendChild(categoriaError);
	}else {
		categoriaError.remove();
	}

    return isValid;
}


function resumen() {

    const isValid = verificacion()

    if (isValid) {

        const categoria = categoriaSelect.value;

        let descuento = 0;
        switch (categoria) {
            case "Estudiante":
                descuento = 80;
                break;
            case "Trainee":
                descuento = 50;
                break;
            case "Junior":
                descuento = 15;
                break;
            default:
                break;
        }

        const valorTicket = 200;
        const descuentoAplicadoUnTicket = valorTicket * (1 - descuento / 100);
        const totalPagar = Math.round(descuentoAplicadoUnTicket * cantidadInput.value);
	
        totalSpan.textContent = "$" + totalPagar;
        const hiddenTotalInput = document.createElement("input");
    	hiddenTotalInput.type = "hidden";
   		hiddenTotalInput.name = "total";
    	hiddenTotalInput.value = totalPagar;
    	form.appendChild(hiddenTotalInput);

    }
}

function borrar() {
	totalSpan.textContent = "";
}

function comprar(){
	const isValid = verificacion();

  if (isValid) {
    form.submit();
  }
}

document.getElementById("resumen").addEventListener("click", resumen);
document.getElementById("borrar").addEventListener("click", borrar);
document.getElementById("comprar").addEventListener("click", comprar);