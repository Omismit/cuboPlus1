
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

function loading_search_user(){
    var option="";
    $.ajax({
        method: "POST",
        url: "store.php",
        dataType: "json",
        data: {type: "4"},
        success: function (data) {
            if (data['response']) {
                $("#users").select2("destroy");
                $("#users").html("");
                $.each(function(index){
                   option='<option value="'+index["iduser"]+'">('+index["name"]+' '+index["lastname"]+')</option>';
                   $("#users").append(option);
                });
                $("#users").select2();
            } else {
                $("#alert1").show();
            }
        },
        error: function () {

        }
    });
}


