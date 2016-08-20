App.activity = App.cable.subscriptions.create "ActivityChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (event_html) ->
    $('#events').prepend event_html
    # Called when there's incoming data on the websocket for this channel
