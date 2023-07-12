document.addEventListener('DOMContentLoaded', function() {
  const passwordInput = document.getElementById('passwordInput');
  const confirmPasswordInput = document.getElementById('confirmPasswordInput');
  const passwordError = document.getElementById('passwordError');

  confirmPasswordInput.addEventListener('input', function() {
    const password = passwordInput.value;
    const confirmPassword = confirmPasswordInput.value;

    if (password !== confirmPassword) {
      passwordError.textContent = "Passwords do not match";
    } else {
      passwordError.textContent = "";
    }
  });
});
