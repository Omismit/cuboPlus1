document.addEventListener("DOMContentLoaded", function() {
    const inputs = document.querySelectorAll("input");
  
    inputs.forEach(function(input) {
      const label = input.nextElementSibling;
  
      input.addEventListener("focus", function() {
        label.classList.add("active");
      });
  
      input.addEventListener("blur", function() {
        if (this.value === "") {
          label.classList.remove("active");
        }
      });
    });
  });
  