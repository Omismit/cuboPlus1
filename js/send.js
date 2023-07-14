var dataSelect;
let dollarUSLocale = Intl.NumberFormat('en-US', {
    style: "currency",
    currency: "USD"
});
let decimal=Intl.NumberFormat('en-IN', { maximumSignificantDigits: 3 });
function loading_balance() {
    $.ajax({
        method: "POST",
        url: "store.php",
        dataType: "json",
        data: {type: "1"},
        success: function (data) {
            if (data['response']) {
                $("#sats").html(dollarUSLocale.format(data['data']['fiatBalance']));
            } else {
                $("#alert1").show();
            }
        },
        error: function () {

        }
    });
}

function loading_search_user() {
    $.ajax({
        method: "POST",
        url: "store.php",
        dataType: "json",
        data: {type: "4"},
        success: function (data) {
            if (data['response']) {
                $('#users').select2({
                    data: data['data']
                });
            } else {
                $("#alert1").show();
            }
        },
        error: function () {

        }
    });
}

function prepare_send() {
    var amount = $("#cantidadEnviar").val();
    var userR = $("#users").val();
    $.ajax({
        method: "POST",
        url: "store.php",
        dataType: "json",
        data: {type: "2", val1: amount, val2: userR},
        success: function (data) {
            if (data['response']) {
                $("#alert1").hide();
                $("#confirmationMessageSATS").html((data['data']['sats']));
                $("#confirmationMessageFee").html((data['data']['fee']));
                $("#confirmationMessageTotal").html(data['data']['total']);
                $('#confirmModal').modal('show');
            } else {
                $("#alert1").html(data['msg']);
                $("#alert1").show();
            }
        },
        error: function () {

        }
    });
}

function send(){
    var amount = $("#cantidadEnviar").val();
    var userR = $("#users").val();
    $.ajax({
        method: "POST",
        url: "store.php",
        dataType: "json",
        data: {type: "3", val1: amount, val2: userR},
        success: function (data) {
            if (data['response']) {
//                location.href="./dashboard.php";
            } else {
                $("#alert1").show();
            }
        },
        error: function () {

        }
    });
}


