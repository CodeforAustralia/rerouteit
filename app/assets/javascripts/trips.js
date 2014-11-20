$(document).ready(function() {
  var beforeHandler = function() {
    showSpinner();
    $("#result").html("");
  };

  var handleResponse = function (response, textStatus, jqXHR) {
    hideSpinner();
    $("#result").html(response);
  };

  var showSpinner = function() {
    $("#spinner").show();
  };

  var hideSpinner = function() {
    $("#spinner").hide();
  };

  $(document).keypress(function(e) {
    if (e.which == 13) {
      var origin = $("#origin").val();
      var destination = $("#destination").val();

      $.ajax("/trips", {
        beforeSend: beforeHandler,
        method: "POST",
        data: { origin: origin, destination: destination },
        success: handleResponse,
        error: handleResponse
      });
    }
  });
});
