function get_tags(){
    $('.tabs_page').eq(3).html(loading);
    $.ajax({
        type: "GET",
        url: "/settings/tauthor/",
        dataType: "text",
        success:
            function(html)
            {
                //$('.resp-tabs-container div').eq(3).html(html);
            },
        error:
            function()
            {
                $('.tabs_page').eq(3).html(error);
            }
    });
}