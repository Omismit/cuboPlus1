document.addEventListener("DOMContentLoaded", function () {
    const expirationInput = document.getElementById("expiration");

    expirationInput.addEventListener("input", function () {
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

document.addEventListener("DOMContentLoaded", function () {
    const cvvInput = document.getElementById("cvv");

    cvvInput.addEventListener("input", function () {
        this.value = this.value.replace(/\D/g, ""); // Eliminar caracteres no numéricos
        this.value = this.value.slice(0, 3); // Limitar a 3 caracteres
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const amountInput = document.getElementById("amount");

    amountInput.addEventListener("input", function () {
        this.value = this.value.replace(/[^0-9]/g, ""); // Eliminar caracteres no numéricos

        // Validar si el valor es negativo y ajustarlo a cero si es el caso
        const amount = parseInt(this.value);
        if (amount < 0) {
            this.value = "0";
        }
    });
});

function addAssents() {
    var val1 = $("#amount").val();
    $.ajax({
        method: "POST",
        url: "./store.php",
        dataType: "json",
        data: {type: "6",amount:val1},
        success: function (data) {
            if (data['response']) {
                location.href="./dashboard.php";
            } else {
                $("#alert1").show();
            }
        },
        error: function () {

        }
    });
}
  