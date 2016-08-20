class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  field :message, type: String
end
