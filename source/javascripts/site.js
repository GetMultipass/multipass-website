document.querySelector('#learn-more').addEventListener('click', function(ev) {
    jQuery("html, body").animate({ scrollTop: jQuery('#more').offset().top }, 1000);

    ev.preventDefault();
    ev.stopPropagation();

    return false;
}, false);
