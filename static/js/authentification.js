$(function () {
    $("#info").hide();
    $("#info_admin").hide();
    $("#success").hide();
    $("#success_save").hide();
    $("#success_admin").hide();
    $("#admin").hide();
    $("#fail_save").hide();

    $("#connect").click(function () {
        $.post(
            "auth",
            JSON.stringify({
                type: "authentification",
                mdp: $("#password").val(),
            }),
            function (data) {
                retour(data);
            }
        );
    });

    $("#password").keypress(function (event) {
        if (event.which == 13) {
            $.post(
                "auth",
                JSON.stringify({
                    type: "authentification",
                    mdp: $("#password").val(),
                }),
                function (data) {
                    retour(data);
                }
            );
        }
    });

    var mdps = [];
    function retour(data) {
        $("#admin_mdps").html("");
        if (data.success == "admin") {
            $("#success_admin").fadeIn(500);
            $("#info_admin").fadeIn(500);
            $("#admin").show(400);
            mdps = data.mdp;
            for (var i = 0; i < data.mdp.length; i++) {
                $("#admin_mdps").append(
                    '<br/><input type="text" class="form-control" id="mdp' +
                        i +
                        '" placeholder="blank - this passwd will be deleted" value="' +
                        data.mdp[i] +
                        '">'
                );
            }
        } else if (data.success) {
            $("#success").fadeIn(500);
            setTimeout(function () {
                location.reload();
            }, 1500);
        } else {
            $("#info").show(200);
        }
    }

    $("#save").click(function () {
        //we update the list
        for (var i = 0; i < mdps.length; i++) {
            mdps[i] = $("#mdp" + i).val();
        }
        //now we can delete those who are empty
        for (var i = 0; i < mdps.length; i++) {
            if (mdps[i] == "") {
                mdps.splice(i, 1);
            }
        }

        $.post(
            "auth",
            JSON.stringify({
                type: "admin",
                mdp: $("#password").val(),
                newmdp: mdps,
            }),
            function (data) {
                if (data.success) {
                    $("#success_save").show(300);
                    $.post(
                        "auth",
                        JSON.stringify({
                            type: "words",
                            mdp: $("#password").val(),
                        }),
                        function (data) {
                            retour(data);
                        }
                    );
                } else {
                    $("#fail_save").show(300);
                }
            }
        );
    });

    $("#add").click(function () {
        $("#admin_mdps").html("");
        mdps.push("new passwd");
        for (var i = 0; i < mdps.length; i++) {
            $("#admin_mdps").append(
                '<br/><input type="text" class="form-control" id="mdp' +
                    i +
                    '" placeholder="blank - this password will be deleted" value="' +
                    mdps[i] +
                    '">'
            );
        }
    });
});
