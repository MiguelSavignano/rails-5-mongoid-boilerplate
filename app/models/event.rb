class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  include Rails.application.routes.url_helpers

  field :message, type: String
  field :link_info, type: String
  # after_create { |document| EventBroadcastJob.perform_later document.id.to_s }
  after_create { |document| ActivityChannel.broadcast document }

  def self.create_for_product(product)
    Event.create(message: "new product has been created",
      link_info: Rails.application.routes.url_helpers.product_path(product) )
  end

end
