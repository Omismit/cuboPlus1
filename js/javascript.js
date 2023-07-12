
function number1() {
    // Obtiene la etiqueta de texto por su id
    var number1 = 1;
    
    // Cambia el valor de la etiqueta de texto
    USD_value.innerHTML = "$ 0.0" + number1;
}

var numeros = [];
var count = 0;
var btc = false;
var display = document.getElementById("sign2");

function convert() {
  if (btc == true) {
    display.innerText = "USD";
    //display.classList.remove("text-danger"); // Opcional: Remover clases adicionales
    btc = false;
  } else {
    display.innerText = "SAT";
    //display.classList.add("text-danger"); // Opcional: Agregar clases adicionales
    btc = true;
  }
}

/*
    function agregarNumero(numero) {
      //numeros.push(numero);

      //actualizarDisplay();
      //actualizarLista();



    }

    function actualizarDisplay() {
      var display = document.getElementById("display");
      display.innerText = numeros.join("");
      count++;

      if(count==3){
        numeros.splice(1, 0, ",");
      }
      if(count==6){
        numeros.splice(5, 0, ",");
      }
    }

    function actualizarLista() {
      var numerosList = document.getElementById("numerosList");
      numerosList.innerHTML = "";

      for (var i = 0; i < numeros.length; i++) {
        var numero = numeros[i];

        var li = document.createElement("li");
        li.textContent = numero;
        numerosList.appendChild(li);
      }
    }
    */