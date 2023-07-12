
var pago = document.getElementById('sats')
var desc = document.getElementById('desc')
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
      "amount": pago.value,
      "description": desc.value,
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

enviar.addEventListener('click', enviarPago);


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
    
    bolt11 = data.data.invoice.fastRequest
    console.log(bolt11)
    /*
    qrcode.toDataURL(bolt11, function (err, url) {
      if (err) {
        console.error('Error al generar el código QR:', err);
        return;
      }
      qr.style.width = '200px'
      qr.style.height = '200px'
      qr.textContent = url;
    });*/
  })
  .catch(error => {
    console.error(error);
  });
}



createQR.addEventListener('click',mostrarQR())