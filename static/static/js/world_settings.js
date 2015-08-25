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
                $('.list-a').click(alert(1));
            },
        error:
            function()
            {
                $('.tabs_page').eq(1).html(error);
            }
    });
}
