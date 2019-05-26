// sign in
$(document).on('ready', function () {
    // Signin Tab
    $('#signup-link, #go-back-link').on('click', function (e) {
        e.preventDefault();
        $('#signup, #go-back-link').show();
        $('#login').hide();
        $('#forgot-password').hide();
    });

    $('#login-link').on('click', function (e) {
        e.preventDefault();
        $('#login').show();
        $('#signup, #go-back-link').hide();
        $('#forgot-password').hide();
    });

    $('#forgot-password-link').on('click', function (e) {
        e.preventDefault();
        $('#forgot-password').show();
        $('#login').hide();
        $('#signup').hide();
    });
});
