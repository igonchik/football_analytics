var loading = '<div class="element"><div class="loading3"><div></div><div></div><div></div><div></div><div></div></div></div>';
var error = '';
var active_tab = '0';

$(document).ready(function () {
    $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion
        width: 'auto', //auto or any width like 600px
        fit: true,   // 100% fit in a container
        closed: 'accordion', // Start closed if in accordion view
        activate: function(event) { // Callback function if tab is switched
            var $tab = $(this);
            var numTab = $tab.attr('aria-controls').substr(9);
            if (active_tab != numTab) {
                active_tab = numTab;
                if (numTab == '0') {
                    get_authors(1);
                }
                else if (numTab == '1')
                    get_world();
                else if (numTab == '2')
                    get_football();
                else if (numTab == '3')
                    get_tags();
            }
        }
    });
    get_authors(1);
});


function get_authors(page){
    $('.tabs_page').eq(0).html(loading);
    $.ajax({
        type: "GET",
        url: "/settings/tauthor/?page="+parseInt(page),
        dataType: "text",
        success:
            function(html)
            {
                $('.tabs_page').eq(0).html(html);
            },
        error:
            function()
            {
                $('.tabs_page').eq(0).html(error);
            }
    });
}


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