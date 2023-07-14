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
