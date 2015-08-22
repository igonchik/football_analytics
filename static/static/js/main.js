$(window).bind('resize', function() {
    resizeIndex();
}).trigger('resize');


function resizeIndex()
{
    if ($('#copyright').innerWidth()+$('#lang_table').innerWidth() > $(window).innerWidth())
    {
        $('#copyright').css('padding-top', '5px');
        $('#lang_table').css('margin-top', '-20px');
    } else
    {
        $('#copyright').css('padding-top', '20px');
        $('#lang_table').css('margin-top', '0');
    }
}

$(document).ready(function () {
    resizeIndex();
});