$(document).ready ->
  beforeHandler = ->
    showSpinner()
    $("#result").html ""

  handleResponse = (response, textStatus, jqXHR) ->
    hideSpinner()
    $("#result").html response

  showSpinner = ->
    $("#spinner").show()

  hideSpinner = ->
    $("#spinner").hide()

  $(document).keypress (e) ->
    if e.which is 13
      origin = $("#origin").val()
      destination = $("#destination").val()
      $.ajax "/trips",
        beforeSend: beforeHandler
        method: "POST"
        data:
          origin: origin
          destination: destination
        success: handleResponse
        error: handleResponse
