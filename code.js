


/*
var pago = document.getElementById('sats')
var desc = document.getElementById('desc')*/
var enviar = document.getElementById('enviar')
var createQR = document.getElementById('createQR')
var id;
;


async function obtenerDatos(){
await fetch('https://api.zebedee.io/v0/wallet', {
  method: 'get',
  headers: {
    'Content-Type': 'application/json',
    'apikey': 'h0YsMAWwAZ1qP588e7YAOQDehWta5KtY'
  },

})
.then(response => {
  if (response.ok) {
    return response.json();
  } else {
    throw new Error('Error en la solicitud');
  }
})
.then(data => {
  console.log(data);
  balanse(data.data.balance)  
})
.catch(error => {
  console.error(error);
});

}
function balanse (amount){
  console.log(amount)
}


async function enviarPago(){
  await fetch('https://api.zebedee.io/v0/charges', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'apikey': 'h0YsMAWwAZ1qP588e7YAOQDehWta5KtY'
    },
    body: JSON.stringify({
      "amount": "240000",
      "description": "ahahhaah",
      "expiresIn": 300,
      "internalId": "11af01d0",
      "callbackUrl": "https://my-website.com/zbd-callback"
    })
  })
  .then(response => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error('Error en la solicitud');
    }
  })
  .then(data => {
    console.log(data);
  })
  .catch(error => {
    console.error(error);
  });
}

//enviar.addEventListener('click', enviarPago);
/*
//POST
var texto
function mostrarQR(){
  fetch('https://api.zebedee.io/v0/withdrawal-requests', {
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      'apikey': 'h0YsMAWwAZ1qP588e7YAOQDehWta5KtY'
    },
    body: JSON.stringify({
      "amount": "15000",
  "description": "Withdraw QR!",
  "expiresIn": 300,
  "internalId": "1c3b1-f61j2",
  "callbackUrl": "https://your-website.com/zbd-callback"
    })
  })
  .then(response => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error('Error en la solicitud');
    }
  })
  .then(data => {
    console.log(data);
    id = data.data.id
    quitarQR(id)
    bolt11 = data.data.invoice.fastRequest
    console.log(bolt11)
    bolt11.toString();
    const qrCode = new QRCode(document.getElementById("qr"), {
      text: bolt11
    });
    document.querySelector('.card-text').textContent = bolt11
    
  })
  .catch(error => {
    console.error(error);
  });
}

//GET
function quitarQR(id){
  fetch(`https://api.zebedee.io/v0/withdrawal-requests/${id}`, {
    method: 'get',
    headers: {
      'Content-Type': 'application/json',
      'apikey': 'h0YsMAWwAZ1qP588e7YAOQDehWta5KtY'
    }
  
  })
  .then(response => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error('Error en la solicitud');
    }
  })
  .then(data => {
    
    console.log(data); 
  
    if(data.status == "completed"){
      qr = document.getElementById("qr"),
     
    }
  })
  .catch(error => {
    console.error(error);
  });
}



setInterval(quitarQR, 3000)

mostrarQR()*/

//GET

function quitarQR() {
  fetch(`https://api.zebedee.io/v0/withdrawal-requests/${id}`, {
    method: 'get',
    headers: {
      'Content-Type': 'application/json',
      'apikey': 'h0YsMAWwAZ1qP588e7YAOQDehWta5KtY'
    }
  })
  .then(response => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error('Error en la solicitud');
    }
  })
  .then(data => {
    console.log(data); 

    if (data.data.status == "completed") {
      var contenedor =  document.querySelector("#contenedor") ;
      //contenedor.style.display = "none";
      fetch("../bd/withdraw.php",{
        headers:{
          "Content-type":"application/json"
        }
      }).then(response =>{
          console.log("Conexion exitosa")
          return response.json();
      })
      var con_succ = document.getElementById("con-success")
      con_succ.style.display = "block"
      con_succ.style.visibility = "visible"
      var succReturn = document.getElementById("succReturn")
      succReturn.addEventListener("click",()=>{
        location.href = "dashboard.php";
      })
    }
  })
  .catch(error => {
    console.error(error);
  });
}


//Obtener datos de Base de datos
fetch('../bd/satoshis.php', {
  method: "POST",
  headers: {
    "Content-Type": "application/json"
  }
}).then(response => {
    if(response.ok ){
    console.log("Conexión exitosa"); // Mensaje de éxito de conexión
    return response.json();
    }else{
      console.log("Error en la conexion el proceso")
    }
  }).catch(error =>{
    console.error('Error en la solicitud:', error);
  })
  .then(data => {
    console.log("Respuesta del servidor:", data); // Imprimir la respuesta JSON del servidor

    if (data.satsBalance) {
      var satsBalance = data.satsBalance;

      // Utilizar el valor de satsBalance en tu código JavaScript
      console.log("satsBalance:", satsBalance);
      mostrarQR(satsBalance.toString())
      // Resto del código...
    } else {
      console.error("Error en la respuesta del servidor:", data.error);
    }
  })
  .catch(error => {
    console.error("Error de conexión:", error);
  });


function mostrarQR(sats) {
    console.log("sats balance from js", sats);

    if (sats > 0){
      var contenedor =  document.querySelector("#contenedor") ;
      contenedor.style.display = "block";
      contenedor.style.visibility ="visible";
  fetch('https://api.zebedee.io/v0/withdrawal-requests', {
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      'apikey': 'h0YsMAWwAZ1qP588e7YAOQDehWta5KtY'
    },
    body: JSON.stringify({
      "amount": sats,
      "description": "Withdraw QR!",
      "expiresIn": 300,
      "internalId": "1c3b1-f61j2",
      "callbackUrl": "https://your-website.com/zbd-callback"
    })
  })
  .then(response => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error('Error en la solicitud');
    }
  })
  .then(data => {
    console.log(data);
    id = data.data.id;
    bolt11 = data.data.invoice.fastRequest
    console.log(bolt11)
    bolt11.toString();
    const qrCode = new QRCode(document.getElementById("qr"), {
      text: bolt11
    });
    document.querySelector('.card-text').textContent = bolt11
    setInterval(quitarQR, 2000); // Llamar a quitarQR cada 3 segundos
    // Resto del código
  })
  .catch(error => {
    console.error(error);
  });
    }
    else{
      console.log("Prueba de fuego")
      var contenedor =  document.querySelector("#contenedor") ;
      var con_error=document.querySelector("#con-error");
      contenedor.style.display = "none";
      contenedor.style.color = "red";
      con_error.style.display = "block";
      con_error.style.visibility = "visible";
      var errorReturn = document.getElementById("errorReturn")
      errorReturn.addEventListener("click", ()=>{
        location.href = "dashboard.php";
      })
    }
}

//mostrarQR();







