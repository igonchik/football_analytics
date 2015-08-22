function get_world(){
    $('.tabs_page').eq(1).html(loading);
    $.ajax({
        type: "GET",
        url: "/settings/tauthor/",
        dataType: "text",
        success:
            function(html)
            {
                //$('.resp-tabs-container div').eq(1).html(html);
            },
        error:
            function()
            {
                $('.tabs_page').eq(1).html(error);
            }
    });
}
