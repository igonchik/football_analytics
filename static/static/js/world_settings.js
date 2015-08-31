function get_world(){
    $('.tabs_page').eq(1).html(loading);
    $.ajax({
        type: "GET",
        url: "/settings/worldlist/",
        dataType: "text",
        success:
            function(html)
            {
                $('.tabs_page').eq(1).html(html);
                var y  = $('body').innerHeight()-350;
                $('.scr').css('height', y+'px');
                $('.scr').scroller();
            },
        error:
            function()
            {
                $('.tabs_page').eq(1).html(error);
            }
    });
}

function find_clibs(val)
{
    alert(val);
}
