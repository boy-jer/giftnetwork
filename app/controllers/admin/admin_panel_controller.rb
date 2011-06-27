class Admin::AdminPanelController < Admin::ApplicationController
  def index
  end
  def refresh_yipit
    require 'open-uri'
    query = ActiveSupport::JSON.decode(open("http://api.yipit.com/v1/deals/?key=FDhUVBU75N9ua8sE&limit=500").read)
    @yipit_result = query.to_hash
  end
end
