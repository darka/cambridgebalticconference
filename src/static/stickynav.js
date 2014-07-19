// based on http://www.backslash.gr/content/blog/webdevelopment/6-navigation-menu-that-stays-on-top-with-jquery
function sticky_nav_init(tag) {
    // grab the initial top offset of the navigation
    var sticky_navigation_offset_top = $(tag).offset().top;

    // our function that decides whether the navigation bar should have "fixed" css position or not
    var sticky_navigation = function(){
        var scroll_top = $(window).scrollTop(); // our current vertical position from the top

        // if we've scrolled more than the navigation, change its position to fixed to stick to top,
        // otherwise change it back to relative
        if (scroll_top > sticky_navigation_offset_top) {
            $(tag).css({'position': 'fixed', 'top':0, 'left':0, 'bottom':'auto' });
        } else {
            $(tag).css({'position': 'absolute', 'top':'auto', 'left':'auto', 'bottom':'5%'});
        }
    };

    // run our function on load
    sticky_navigation();

    // and run it again every time you scroll
    $(window).scroll(function() {
        sticky_navigation();
    });
}
