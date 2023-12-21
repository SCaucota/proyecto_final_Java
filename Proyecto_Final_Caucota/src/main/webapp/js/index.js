const form = document.getElementById("form");
const nombreInput = document.getElementById("nombreInputOrador");
const apellidoInput = document.getElementById("apellidoInputOrador");
const emailInput = document.getElementById("emailInputOrador");
const telInput = document.getElementById("telInputOrador");
const temaInput = document.getElementById("temaInputOrador");
const descTextarea = document.getElementById("descTextOrador");

const divNombreInput = document.getElementById("div-input-nombre");
const divApellidoInput = document.getElementById("div-input-apellido");
const divEmailInput = document.getElementById("div-input-email");
const divTelInput = document.getElementById("div-input-telefono");
const divTemaInput = document.getElementById("div-input-tema");
const divDescText = document.getElementById("div-textarea-desc");

const palabraExpresion = /^[A-Za-z\s'-]+$/;
const emailExpresion = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
const numerosExpresion = /^(0|[1-9]\d*)(\.\d+)?$/;

const nombreError = document.createElement("p");
const apellidoError = document.createElement("p");
const emailError = document.createElement("p");
const telError = document.createElement("p");
const temaError = document.createElement("p");
const descError = document.createElement("p");


function verificacion() {

    let isValid = true;

    if (nombreInput.value === "") {
        isValid = false;
        nombreError.textContent = 'Campo Obligatorio';
        nombreError.style.color = "red";
        divNombreInput.appendChild(nombreError);
    } else if (!palabraExpresion.test(nombreInput.value)) {
        isValid = false;
        nombreError.textContent = 'Nombre inválido';
        nombreError.style.color = "red";
        divNombreInput.appendChild(nombreError);
    }else{
		nombreError.remove();
	}
	
	if(apellidoInput.value === ""){
		isValid = false;
        apellidoError.textContent = 'Campo Obligatorio';
        apellidoError.style.color = "red";
        divApellidoInput.appendChild(apellidoError);
    }else if (!palabraExpresion.test(apellidoInput.value)) {
        isValid = false;
        apellidoError.textContent = 'Apellido inválido';
        apellidoError.style.color = "red";
        divApellidoInput.appendChild(apellidoError);
    } else {
        apellidoError.remove();
    }
	
	if(emailInput.value === ""){
		isValid = false;
        emailError.textContent = 'Campo Obligatorio';
        emailError.style.color = "red";
        divEmailInput.appendChild(emailError);
	}else if (!emailExpresion.test(emailInput.value)) {
        isValid = false;
        emailError.textContent = 'Email inválido';
        emailError.style.color = "red";
        divEmailInput.appendChild(emailError);
    } else {
        emailError.remove();
    }

    if(telInput.value === ""){
		isValid = false;
        telError.textContent = 'Campo Obligatorio';
        telError.style.color = "red";
        divTelInput.appendChild(telError);
	}else if (!numerosExpresion.test(telInput.value)) {
        isValid = false;
        telError.textContent = 'Teléfono inválido';
        telError.style.color = "red";
        divTelInput.appendChild(telError);
    } else {
        telError.remove();
    }
    
    if(temaInput.value == ""){
		isValid = false;
        temaError.textContent = 'Campo obligatorio';
        temaError.style.color = "red";
        divTemaInput.appendChild(temaError);
	}else{
		temaError.remove();
	}
	if(descTextarea.value == ""){
		isValid = false;
        descError.textContent = 'Campo obligatorio';
        descError.style.color = "red";
        divDescText.appendChild(descError);
	}else{
		descError.remove();
	}
    
    return isValid;
}


function enviar(){
	const isValid = verificacion();

  if (isValid) {
    form.submit();
  }
}

document.getElementById("button_enviar_oradores").addEventListener("click", enviar);