document.addEventListener("DOMContentLoaded", function() {
  const expirationInput = document.getElementById("expiration");

  expirationInput.addEventListener("input", function() {
    const value = this.value.replace(/\D/g, ""); // Eliminar caracteres no numéricos
    let formattedValue = "";

    if (value.length > 2) {
      const month = value.slice(0, 2);
      const year = value.slice(2, 4);
      formattedValue = `${month}/${year}`;
    } else {
      formattedValue = value;
    }

    this.value = formattedValue.slice(0, 5);
  });
});
