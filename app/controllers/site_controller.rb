class SiteController < ApplicationController
  include ReactOnRails::Controller
  def react_demo
    @react_component = "Demo"
    @react_props = {}
    redux_store "Store", props:{max_number:10}
  end
end
