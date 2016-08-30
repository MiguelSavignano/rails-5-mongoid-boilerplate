class SiteController < ApplicationController
  def react_demo
    @users = (0..50).map do
      {id:Faker::Number.number(10),
       name: Faker::Name.name,
       email:Faker::Internet.email}
    end
  end
end
