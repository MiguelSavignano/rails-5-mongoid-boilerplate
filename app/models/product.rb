class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :price, type: Integer
  after_create :create_event

  def create_event
    Event.create_for_product(self)
  end
end
