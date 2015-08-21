var loading = '<div class="element"><div class="loading3"><div></div><div></div><div></div><div></div><div></div></div></div>';
var loading_small ='<div class="element-small"><div class="loading1"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div></div>';
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
                var pred = $('html').innerWidth();
                var cols = pred/320>>0;
                if ($(window).innerWidth() > 640)
                    $('.ProfileCard').attr('style', 'width:'+(($(window).innerWidth()*0.9-30)/cols-14)+'px');
                else
                    $('.ProfileCard').attr('style', 'width: 100%; margin-left: 0');
                $('#getnextauthor').attr('style', 'margin-left:10px; width:'+($('#authors_content').innerWidth()-10)+'px');
                $('#getnextauthor').click(function()
                {
                    $('#auth_page').val(parseInt($('#auth_page').val())+1);
                    get_authors_page($('#auth_page').val())
                });
                $(window).resize();
            },
        error:
            function()
            {
                $('.tabs_page').eq(0).html(error);
            }
    });
}


function RefreshAuthCache(id)
{
    $('#logo_'+id).html(loading_small);
    $('#logo_'+id).removeClass('logo_url');
    $.ajax({
        type: "GET",
        url: "/settings/tauthor_recache/"+parseInt(id)+'/',
        dataType: "text",
        success:
            function(html)
            {
                $('#logo_'+id).html('<div id="logo_ref_'+id+'" class="ProfileCard-avatar-refreshbutton" onclick="RefreshAuthCache('+id+');"></div>');
                $('#logo_'+id).attr('style', 'background: url('+html+') no-repeat scroll 0 0 / 70px');
                $('#logo_'+id).addClass('logo_url');
            },
        error:
            function()
            {
                $('#logo_'+id).html('<div id="logo_ref_'+id+'" class="ProfileCard-avatar-refreshbutton" onclick="RefreshAuthCache('+id+');"></div>');
                $('#logo_'+id).attr('style', 'background: rgba(0, 0, 0, 0) url("/static/img/nophoto.svg") no-repeat scroll 0 0 / 70px auto;');
                $('#logo_'+id).addClass('logo_url');
            }
    });
}

function get_authors_page(page){
    $('#authors_content_mini').eq(0).append(loading);
    $.ajax({
        type: "GET",
        url: "/settings/tauthor/?page="+parseInt(page),
        dataType: "text",
        success:
            function(html)
            {
                $('.element').remove();
                $('#authors_content_mini').eq(0).append(html);
                var pred = $('html').innerWidth();
                var cols = pred/320>>0;
                if ($(window).innerWidth() > 640)
                    $('.ProfileCard').attr('style', 'width:'+(($(window).innerWidth()*0.9-30)/cols-14)+'px');
                else
                    $('.ProfileCard').attr('style', 'width: 100%; margin-left: 0');
            },
        error:
            function()
            {
                $('.element').remove();
                $('#authors_content_mini').eq(0).append(error);
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

$(window).bind('resize', function() {
    var pred = $('html').innerWidth();
    var cols = pred/320>>0;
    if ($(window).innerWidth() > 640)
        $('.ProfileCard').attr('style', 'width:'+(($(window).innerWidth()*0.9-30)/cols-14)+'px');
    else
        $('.ProfileCard').attr('style', 'width: 100%; margin-left: 0');
    $('#getnextauthor').attr('style', 'margin-left:10px; width:'+($('#authors_content').innerWidth()-10)+'px');

}).trigger('resize');


function DeleteAuthor(id)
{
    $('#profile_'+id).remove();
    $.ajax({
        type: "GET",
        url: "/settings/tauthor/remove/"+id+"/",
        dataType: "text",
        success:
            function(html)
            {
                //showpopup_suc
            }
    });
}


function AddAuthor()
{

}