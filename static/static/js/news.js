$(document).ready(function () {
    $('.parent_li').append('<div class="news_effect"></div>')
    $( "#tab1_search" ).focus(function() {
        $('.add_author_block').css('width', '180px');
        $('.effect_author').css('display', 'none');
    });
    $( "#tab1_search" ).focusout(function() {
        $('.add_author_block').css('width', '90px');
        $('.effect_author').css('display', 'block');
    });
    if (document.getElementById("cur_path") && parseInt(document.getElementById("cur_path").value) > 0 )
        $("#choise_"+parseInt(document.getElementById("cur_path").value)).addClass('active_span')

    var elem = document.getElementsByName('node');
    var min = 0;
    for (var i=0; i < elem.length; i++)
    {
        if ($("#"+elem[i].id).innerWidth() > min)
            min = $("#"+elem[i].id).innerWidth();
    }
    $("#tree_ul").css('width', min+'px');
    for (var i=0; i < elem.length; i++)
        $("#"+elem[i].id).css('display', 'block');

});


function AddNews()
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


