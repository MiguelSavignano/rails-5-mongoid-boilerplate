App.rspec = App.cable.subscriptions.create "RspecChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log data.message
    # Called when there's incoming data on the websocket for this channel
