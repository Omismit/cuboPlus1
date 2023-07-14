
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
                $("#sats").html(dollarUSLocale.format(data['data']['fiatBalance']));
            } else {
                $("#alert1").show();
            }
        },
        error: function () {

        }
    });
}


