
/*Inicio del codigo
var pago = document.getElementById('sats')
var desc = document.getElementById('desc')*/
var enviar = document.getElementById('enviar')
var createQR = document.getElementById('createQR')


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
    
    var id = data.data.id;
    quitarQR(id.toString())
  
    console.log(id)
    bolt11 = data.data.invoice.fastRequest
    console.log(bolt11)
    document.querySelector('.card-text').textContent = bolt11
    bolt11.toString();
    const qrCode = new QRCode(document.getElementById("qr"), {
      text: bolt11
    });
    
   
  })
  .catch(error => {
    console.error(error);
  });
}


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
      qr.textContent = "SUCCESS"
    }

    setInterval(code, delay)
  })
  .catch(error => {
    console.error(error);
  });
}



setTimeout(mostrarQR(),30000)

/*
var pago = document.getElementById('sats')
var desc = document.getElementById('desc')*/
