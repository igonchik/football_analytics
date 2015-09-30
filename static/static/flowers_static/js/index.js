$(document).ready(function () {
    resizeIndex();
});

$(window).bind('resize', function() {
    resizeIndex();
}).trigger('resize');


function resizeIndex()
{
    if ($(window).innerWidth() < 1080)
    {
        var h = 180/1100*$(window).innerWidth();
        var h1= 180/1100*$(window).innerWidth() - 40;
        if (h < 100) {
            h = 100;
            h1 = 70;
        }
        if (h1 > 107)
            h1 = 107;
        $('#header').css('height', h+'px');
        var pos = -180+180/1100*$(window).innerWidth()-80;
        if (180/1100*$(window).innerWidth() < 100)
            pos = -160;
        pos += 'px';
        $('#header').css('background-position', '0 '+ pos);
        $('#header .tel').css('margin', '20px 20px 0 0');
        $('#time').css('margin', '25px 0 0');
        $('#name').css('background-position', '20px 20px');
        $('#name').css('background-size', 6.15*h1+'px '+h1+'px');
        $('#name').css('height', h1+15+'px');
    } else
    {
        $('#header').css('height', '');
        $('#header').css('background-position', '');
        $('#header .tel').css('margin', '');
        $('#time').css('margin', '');
        $('#name').css('background-position', '');
        $('#name').css('background-size', '');
        $('#name').css('height', '');
    }

    if ($(window).innerWidth() <= 880)
    {
        $('.cd-slider').css('padding', '0');
        $('.cd-slider').css('margin', '0');
        $('.cd-projects-wrapper').css('height', '100%');
    } else {
        $('.cd-slider').css('padding', '');
        $('.cd-slider').css('margin', '');
        $('.cd-projects-wrapper').css('height', '');
    }
}