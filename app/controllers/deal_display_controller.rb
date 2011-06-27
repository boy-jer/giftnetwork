class DealDisplayController < ApplicationController
  def index
    @json = DailyDealLocation.all.to_gmaps4rails
  end

end
