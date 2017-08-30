var estilonormal;

function ControlarBorrado(key){
if (confirm("Seguro que deseas Borrar este Item ?" ) === true) {
var form = document.createElement("form"); // crear un form
//
with(form) {
setAttribute("name", "myform"); //nombre del form
setAttribute("action", "Control"); // action por defecto
setAttribute("method", "post"); // method POST }
}
var input = document.createElement("input"); // Crea un elemento input
with(input) {
setAttribute("name", "accion"); //nombre del input
setAttribute("type", "hidden"); // tipo hidden
setAttribute("value", "borrar"); // valor por defecto
}
form.appendChild(input); // añade el input al formulario
var input2 = document.createElement("input"); // Crea un elemento input
with(input2) {
setAttribute("name", "clave"); //nombre del input
setAttribute("type", "hidden"); // tipo hidden
setAttribute("value", key); // valor por defecto
}
form.appendChild(input2); // añade el input al formulario
document.getElementsByTagName("body")[0].appendChild(form);
document.myform.submit();
return false;
// window.location.href="Control?accion=borrar&clave=" + key;
} else {
;
}
}

function ModoEdicion(key){
    
estilonormal=document.getElementById(key).style;
document.getElementById(key).className='modoedicion'  ;
    
}
function ModoNormal(key){
  /*  if (document.getElementById(key).value === "") {
        alert("Este Valor no puede ser Nulo, por favor Ingresa un Valor Válido");
        document.getElementById(key).focus();
        return false;
    } */
document.getElementById(key).className='cuerpo'  ;
    
}
