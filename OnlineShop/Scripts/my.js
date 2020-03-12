$(".editCustomer").click(function () {
    $(this).attr("data-toggle", "modal");
    $(this).attr("data-target", ".bs-example-modal-sm");

    var ctr = $(this).attr("data-details");
    var id = $(this).attr("id");
    var ctrl = $(this).attr("data-controller");
    $("#modalheader").text(ctr + " " + ctrl);
    if (ctr == "Create" && ctrl == "Orders") {
        var qty = $(this).attr("data-qty");
        if (qty > 0) {
            $("#modalPopup").load('http://localhost:60593/' + ctrl + '/' + ctr + '/' + id);
        }
        else {
            $("#modalPopup").load('http://localhost:60593/Product/Details/' + id);
        }
    }
    else if (ctr == "Create") {
        $("#modalPopup").load('http://localhost:60593/' + ctrl + '/' + ctr);
    }
    else {
        $("#modalPopup").load('http://localhost:60593/' + ctrl + '/' + ctr + '/' + id);
    }
});

