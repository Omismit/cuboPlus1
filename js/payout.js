document.addEventListener("DOMContentLoaded", function () {
    const inputs = document.querySelectorAll("input");
    inputs.forEach((input) => {
      input.addEventListener("focus", function () {
        input.parentElement.classList.add("active");
      });
  
      input.addEventListener("blur", function () {
        if (input.value === "") {
          input.parentElement.classList.remove("active");
        }
      });
    });
  });
  