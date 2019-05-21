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
        $('#signup, #go-back-link').show();
        $('').hide();
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
