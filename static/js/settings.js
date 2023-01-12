$(function () {
    $("#settings_modified").hide();
    $("li.settings").addClass("active");

    var assess_session = JSON.parse(localStorage.getItem("assess_session"));

    if (!assess_session) {
        assess_session = {
            attributes: [],
            k_calculus: [
                {
                    method: "multiplicative",
                    active: "false",
                    k: [],
                    GK: null,
                    GU: null,
                },
                {
                    method: "multilinear",
                    active: "false",
                    k: [],
                    GK: null,
                    GU: null,
                },
            ],
            settings: {
                decimals_equations: 3,
                decimals_dpl: 3,
                proba_ce: 0.3,
                proba_le: 0.3,
                language: "english",
                display: "trees",
            },
        };
        localStorage.setItem("assess_session", JSON.stringify(assess_session));
    }

    var settings = assess_session.settings;

    $("#decimals_equations").val(settings.decimals_equations);
    $("#decimals_dpl").val(settings.decimals_dpl);
    $("#proba_ce").val(settings.proba_ce);
    $("#proba_le").val(settings.proba_le);
    $("#" + settings.language).prop("checked", true);
    $("#" + settings.display).prop("checked", true);

    $("#settings").submit(function (e) {
        e.preventDefault();
        settings.decimals_equations = $("#decimals_equations").val();
        settings.decimals_dpl = $("#decimals_dpl").val();
        settings.proba_ce = $("#proba_ce").val();
        settings.proba_le = $("#proba_le").val();
        var language = $("input[type='radio'][name='language']:checked");
        settings.language = language.val();
        var display = $("input[type='radio'][name='display']:checked");
        settings.display = display.val();
        localStorage.setItem("assess_session", JSON.stringify(assess_session));
        $("#settings_modified").fadeIn();
    });
});
