$(document).ready(function () {
    resizeMap();
});

function resizeMap() {
    var cnt = $(window).innerHeight()-145-56-$('.areaLegend').innerHeight();
    if ($(window).innerWidth()<=640)
        cnt -= 50;
    var mp = $('.map > svg').attr('height');
    cnt = (cnt - mp)/2;
    if (cnt && cnt > 0) {
        $('.map').css('margin-top', cnt + 'px');
        $('.map').css('margin-bottom', cnt + 'px');
    } else
    {
        $('.map').css('margin-top', 0);
        $('.map').css('margin-bottom', 0);
    }
}

$(window).bind('resize', function() {
    resizeMap();
    resizeMap();
}).trigger('resize');