App.rspec = App.cable.subscriptions.create "RspecChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    if(data.message == "Test Pass")
      $("#rspec_alert").removeClass("btn-error")
      $("#rspec_alert").addClass("btn-success")
      $("#rspec_alert").text(data.message)
    else
      $("#rspec_alert").removeClass("btn-success")
      $("#rspec_alert").addClass("btn-error")
      $("#rspec_alert").text(data.message)
      
