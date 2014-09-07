var origin = document.getElementById('source_origin');
var destination = document.getElementById('source_destination');

$(document).keypress(function(e) {
    if(e.which == 13) {
        alert('You pressed enter!');
    }
});