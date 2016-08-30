class SiteController < ApplicationController
  def react_demo
    @react_props = {users:
      [ {id:"1",name:"miguel", address:"dato repetido"},{id:"2",name:"alberto", address:"dato repetido"}, ]
    }
  end
end
