$(document).ready(function () {
    loading_balance();
});

function loading_balance() {
    let dollarUSLocale = Intl.NumberFormat('en-US', {
        style: "currency",
        currency: "USD"
    });
    $.ajax({
        method: "POST",
        url: "store.php",
        dataType: "json",
        data: {type: "1"},
        success: function (data) {
            if (data['response']) {
                $("#usd").html(dollarUSLocale.format(data['data']['fiatBalance']));
                $("#sats").html(data['data']['satsBalance']);
            } else {
                $("#alert1").show();
            }
        },
        error: function () {

        }
    });
}