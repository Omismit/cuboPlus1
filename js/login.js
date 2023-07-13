// Obtener referencia al campo de contraseña y al icono de ojo
const passwordInput = document.querySelector('.password-input input');
const passwordToggle = document.querySelector('.password-toggle');

// Función para alternar la visibilidad de la contraseña
function togglePasswordVisibility() {
  if (passwordInput.type === 'password') {
    passwordInput.type = 'text';
    passwordToggle.innerHTML = '<i class="fas fa-eye"></i>';
  } else {
    passwordInput.type = 'password';
    passwordToggle.innerHTML = '<i class="fas fa-eye-slash"></i>';
  }
}

// Mostrar contraseña oculta al cargar la página
passwordInput.type = 'password';
passwordToggle.innerHTML = '<i class="fas fa-eye-slash"></i>';

// Agregar un evento de clic al icono de ojo
passwordToggle.addEventListener('click', togglePasswordVisibility);

// Obtener referencia al botón "Acceder"
const loginButton = document.getElementById('btn-acceder');

// Función para redirigir a la página del menú principal
function redirigir(){
    location.href="menu.html";
}

function login(){
    var user = $("#user").val();
    var pass = $("#password").val();
    $.ajax({
        method:"POST",
        url:"resources/login.php",
        dataType:"json",
        data:{type:"1",val1:user,val2:pass},
        success:function(data){
            if(data['response']){
                location.href="./resources/dashboard.php";
            }else{
                $("#alert1").show();
            }
        },
        error:function(){
            
        }
    });
}