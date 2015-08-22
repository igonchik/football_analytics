var loading = '<div class="element"><div class="loading3"><div></div><div></div><div></div><div></div><div></div></div></div>';
var loading_small ='<div class="element-small"><div class="loading1"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div></div>';
var error = '<div class="error-div"></div>';
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


function endsWith(str, suffix) {
    return str.indexOf(suffix, str.length - suffix.length) !== -1;
}


function BackgroundImageResize(classname)
{
    $("."+classname).each(function(){
        var image_url = $(this).css('background-image'), image;
        if (!endsWith(image_url, '/None")')) {
            image_url = image_url.match(/^url\("?(.+?)"?\)$/);
            var bg = $(this);
            if (image_url[1]) {
                image_url = image_url[1];
                image = new Image();
                $(image).load(function () {
                    var h1 = $('.ProfileCard-bg').eq(0).innerHeight();
                    var l1 = $('.ProfileCard').eq(0).innerWidth()+2;
                    var h2 = image.height;
                    var l2 = image.width;
                    if (h1/l1 > h2/l2)
                        $(bg).css('background-size', 'auto 100%');
                    else
                        $(bg).css('background-size', '100% auto');
                });
                image.src = image_url;
            }
        }});
}


function resize()
{
    var pred = $('html').innerWidth();
    var cols = pred/320>>0;
    if ($(window).innerWidth() > 640) {
        $(".ProfileCard:not('.Preview')").attr('style', 'width:' + (($(window).innerWidth() * 0.9 - 30) / cols - 14) + 'px');
        $('#getnextauthor').attr('style', 'margin-left:10px; width:' + (($(window).innerWidth() * 0.9 - 30) - 14)+'px');
    }
    else {

        $(".ProfileCard:not('.Preview')").attr('style', 'width: 100%; margin-left: 0');
        $('#getnextauthor').attr('style', 'width: 100%; margin-left: 0');
    }
    BackgroundImageResize("ProfileCard-bg-pic:not('.Preview')");
}

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
                resize();
                $(window).resize();
                $( "#tab1_search" ).focus(function() {
                    $('.add_author_block').css('width', '162px');
                    $('.effect_author').css('display', 'none');
                });
                $( "#tab1_search" ).focusout(function() {
                    $('.add_author_block').css('width', '90px');
                    $('.effect_author').css('display', 'block');
                });
                $('#getnextauthor').click(function()
                {
                    if ($('#getnextauthor').attr('class').indexOf('postnextauthbtn') > -1)
                    {
                        $('#auth_post_page').val(parseInt($('#auth_post_page').val())+1);
                        AuthSearch(1);
                    } else {
                        $('#auth_page').val(parseInt($('#auth_page').val())+1);
                        get_authors_page($('#auth_page').val())
                    }
                });
                $("#tab1_search").keydown(function(event){
                    AuthSearch(event)
                });
            },
        error:
            function()
            {
                $('.tabs_page').eq(0).html(error);
            }
    });
}

function AddAuthAction()
{
    var AddAuthForm = $('#AddAuthForm');
    $('#AuthorPreviewPage').addClass('inviz');
    $('#inputauthurl').keypress(function(event){
        $('#AuthorPreviewPage').addClass('inviz');
        $('#submit').css('margin-top', '-41px');
        $('#preview_auth').html('');
        var str = $('#inputauthurl').val();
        $('#inputauthurl').removeClass();
        if (isTweetUserValid(str)) {
            $('#inputauthurl').addClass('success');
        }
        else {
            $('#inputauthurl').addClass('danger');
        }

        if(event.keyCode == 13){
            event.stopImmediatePropagation();
            event.preventDefault();
            var inpfiled = $('#inputauthurl').eq(0);
            if (inpfiled.attr('class').indexOf('success') > -1)
            {
                $('#preview_auth').html(loading);
                $('#submit').css('margin-top', '-211px');
                $.ajax({
                    type: "GET",
                    url: "/settings/tauthor/find/?url="+inpfiled.val(),
                    dataType: "text",
                    success:
                        function(html)
                        {
                            $('.element').remove();
                            if (html.length == 0)
                            {
                                $('#submit').css('margin-top', '-103px');
                                $('#AuthorPreviewPage').removeClass('inviz');
                            } else {
                                $('#preview_auth').html(html);
                                $('#submit').css('margin-top', '-214px');
                                if ($(window).innerWidth()>=754)
                                    $('#submit').css('margin-top', '-215px');
                            }
                        },
                    error:
                        function()
                        {
                            $('.element').remove();
                            $('#submit').css('margin-top', '-103px');
                            $('#AuthorPreviewPage').removeClass('inviz');
                        }
                });
            }
            else
            {
                $('#preview_auth').html('');
            }
        }
    });

    AddAuthForm.submit(function(event) {
        event.stopImmediatePropagation();
        event.preventDefault();
        $('#AuthorPreviewPage').addClass('inviz');
        if (isTweetUserValid($('#inputauthurl').val())) {
            var formData = AddAuthForm.serialize();
            $('#preview_auth').html(loading);
            $('#submit').css('margin-top', '-211px');
            $.ajax({
                type: 'POST',
                url: AddAuthForm.attr('action'),
                data: formData,
                dataType: "text",
                success: function(html)
                {
                    $('.element').remove();
                    if (html!='ok') {
                        $('#submit').css('margin-top', '-103px');
                        $('#AuthorPreviewPage').removeClass('inviz');
                    }
                    else
                    {
                        get_authors(1);
                        $('#modal-addauthor').attr('checked', false);
                    }
                },
                error: function(html)
                {
                    $('.element').remove();
                    $('#AuthorPreviewPage').removeClass('inviz');
                    $('#submit').css('margin-top', '-103px');
                }
            })} else
        {
            $('#submit').css('margin-top', '-103px');
            $('#AuthorPreviewPage').removeClass('inviz');
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
                $('#logo_'+id).attr('style', 'background: url('+html+') no-repeat scroll 0 0 / 48px');
                $('#logo_'+id).addClass('logo_url');
            },
        error:
            function()
            {
                $('#logo_'+id).html('<div id="logo_ref_'+id+'" class="ProfileCard-avatar-refreshbutton" onclick="RefreshAuthCache('+id+');"></div>');
                $('#logo_'+id).attr('style', 'background: rgba(0, 0, 0, 0) url("/static/img/nophoto.svg") no-repeat scroll 0 0 / 48px auto;');
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
                $('#authors_content_mini > h1').eq(1).remove();
                var pred = $('html').innerWidth();
                var cols = pred/320>>0;
                if ($(window).innerWidth() > 640)
                    $('.ProfileCard').attr('style', 'width:'+(($(window).innerWidth()*0.9-30)/cols-14)+'px');
                else
                    $('.ProfileCard').attr('style', 'width: 100%; margin-left: 0');
                BackgroundImageResize('ProfileCard-bg-pic');
            },
        error:
            function()
            {
                $('.element').remove();
                $('#authors_content_mini').eq(0).append(error);
            }
    });
}


$(window).bind('resize', function() {
    resize();
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
    $('#content-modal-addauthor').html(loading);
    $('.element').attr('style', 'margin-top: 25%');
    $.ajax({
        type: "GET",
        url: "/settings/tauthor/add/",
        dataType: "text",
        success:
            function(html)
            {
                $('#content-modal-addauthor').html(html);
                AddAuthAction();
                $('#submit').click(function(){$('#AddAuthForm').submit()});
            },
        error:
            function()
            {
                $('#content-modal-addauthor').html(error);
            }
    });
}


function AuthSearch(event) {
    if (event == 1)
    {
        var q = $("#tab1_search").val();
        if (q != '')
        {
            var csrf= $('.search.search-2.tab1 > input').eq(1).val();
            $('#authors_content_mini').append(loading);
            var posting = $.post("/settings/tauthor/", {q: q, page: $('#auth_post_page').val(),
                csrfmiddlewaretoken: csrf});
            posting.done(function(html) {
                $('.element').remove();
                $('#authors_content_mini').append(html);
                $('#authors_content_mini > h1').eq(1).remove();
                resize();
                resize();
            });
            posting.fail(function() {
                $('#authors_content_mini').html(error);
            });
        } else
        {
            get_authors(1);
        }
    }
    else if(event.keyCode == 13){
        var q = $("#tab1_search").val();
        $('#auth_post_page').val(1);
        if (q != '')
        {
            var csrf= $('.search.search-2.tab1 > input').eq(1).val();
            $('#authors_content_mini').html(loading);
            var posting = $.post("/settings/tauthor/", {q: q, page: $('#auth_post_page').val(),
                csrfmiddlewaretoken: csrf});
            posting.done(function(html) {
                $('#authors_content_mini').html(html);
                resize();
                resize();
            });
            posting.fail(function() {
                $('#authors_content_mini').html(error);
            });
        } else
        {
            get_authors(1);
        }
    }
}