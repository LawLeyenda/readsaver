//remove flash message after 1.5 seconds.
$(function() {
    setTimeout(function(){
        $('.alert').slideUp(500);
    }, 1500);
});

// sign in
$(document).on('ready', function () {
    // initialization of header
    $.HSCore.components.HSHeader.init($('#js-header'));
    $.HSCore.helpers.HSHamburgers.init('.hamburger');

    // initialization of HSMegaMenu component
    $('.js-mega-menu').HSMegaMenu({
        event: 'hover',
        pageContainer: $('.container'),
        breakpoint: 991
    });

    // initialization of HSDropdown component
    $.HSCore.components.HSDropdown.init($('[data-dropdown-target]'), {
        afterOpen: function () {
            $(this).find('input[type="search"]').focus();
        }
    });

    // initialization of go to
    $.HSCore.components.HSGoTo.init('.js-go-to');

    // Signin Tab
    $('#signup-link, #go-back-link').on('click', function (e) {
        e.preventDefault();
        $('#login, #go-back-link').hide();
        $('#signup').show();
        $('#forgot-password').hide();
    });

    $('#login-link').on('click', function (e) {
        e.preventDefault();
        $('#signup').hide();
        $('#login, #go-back-link').show();
        $('#forgot-password').hide();
    });

    $('#forgot-password-link').on('click', function (e) {
        e.preventDefault();
        $('#forgot-password').show();
        $('#login').hide();
        $('#signup').hide();
    });


});


