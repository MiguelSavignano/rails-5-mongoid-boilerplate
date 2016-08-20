# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RspecChannel < ApplicationCable::Channel
  def self.broadcast(message)
    ActionCable.server.broadcast 'rspec_channel',
      { message: message }
  end
  def subscribed
    stream_from "rspec_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
