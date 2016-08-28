class SiteController < ApplicationController
  include ReactOnRails::Controller
  def react_demo
    @react_component = "Demo"
    @react_props = {}
    redux_store "Store", prookps:{max_number:10}
  end
end
