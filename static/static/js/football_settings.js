function get_football(){
    $('.tabs_page').eq(2).html(loading);
    $.ajax({
        type: "GET",
        url: "/settings/tauthor/",
        dataType: "text",
        success:
            function(html)
            {
                //$('.resp-tabs-container div').eq(2).html(html);
            },
        error:
            function()
            {
                $('.tabs_page').eq(2).html(error);
            }
    });
}