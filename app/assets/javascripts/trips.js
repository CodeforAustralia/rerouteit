$(document).ready(function() {
  var handleResponse = function (response, textStatus, jqXHR) {
    $("#result").html(response);
  };

  $(document).keypress(function(e) {
    if (e.which == 13) {
      var origin = $("#origin").val();
      var destination = $("#destination").val();

      $.ajax("/trips", {
        method: "POST",
        data: { origin: origin, destination: destination },
        success: handleResponse,
        error: handleResponse
      });
    }
  });
});
