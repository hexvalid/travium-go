var izolatorStatus = false;

function checkScore() {
    $('#checkScoreButton').prop("disabled", true);
    grecaptcha.ready(function () {
        grecaptcha.execute('6LcOOZcUAAAAAOuPs4XGcFd5JKFnG7Ohl6jaVSse', {action: 'checkScore'}).then(function (token) {
            $.ajax({
                url: '/travium/api/checkScore',
                type: 'POST',
                data: {'g-recaptcha-response': token},
                async: false,
                success: function (d) {
                    $('#checkScoreButton').text(d.score);
                }
            });
        });
    });
}

function checkIzolator() {
    $.ajax({
        url: '/travium/apple-touch-icon-114x114.png',
        type: 'GET',
        async: false,
        success: function (d) {
            if (d.izolatorStatus === true) {
                $('#izolatorStatus').text("AÇIK");
                $('#refreshIzolator').css("background", "#41af67");
                izolatorStatus = true;
            } else {
                $('#izolatorStatus').text("KAPALI");
                $('#refreshIzolator').css("background", "#f75453");
                izolatorStatus = false;
            }
        },
        error: function () {
            $('#izolatorStatus').text("KAPALI");
            $('#refreshIzolator').css("background", "#f75453");
            izolatorStatus = false;
        },
    });
}


$("#refreshIzolator").on('click', function () {
    $('#create-account-form').validate({
        onfocusout: true,
    });

    checkIzolator();

    /*$('#izolatorStatus').prop("disabled", true);

    $('#izolatorStatus').text("AÇIK");
    $('#refreshIzolator').css("background", "#41af67");

    $('#izolatorStatus').text("...");
    $('#refreshIzolator').css("background", "#2f353a");


    $('#izolatorStatus').text("KAPALI");
    $('#refreshIzolator').css("background", "#f75453");


    $('#izolatorStatus').prop("disabled", false);*/

});

$(document).ready(function () {
    $('#create-account-form').validate({
        onfocusout: true,
    });

});
