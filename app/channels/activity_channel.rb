# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ActivityChannel < ApplicationCable::Channel
  def self.broadcast(event)
    ActionCable.server.broadcast 'activity_channel',
      render_event(event)
  end
  def subscribed
    stream_from "activity_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
  def self.render_event(event)
    ApplicationController.renderer.render(partial: 'events/event',
      locals: { event: event })
  end
end
