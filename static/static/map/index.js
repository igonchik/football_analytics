$(document).ready(function () {
    resizeMap();
});

function resizeMap() {

}

$(window).bind('resize', function() {
    resizeMap();
    resizeMap();
}).trigger('resize');