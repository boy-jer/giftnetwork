class HomeController < ApplicationController
  def index
  end
  def search_results
    request = Sucker.new( :locale => :us, :key => 'AKIAJY7TE7TS3ZZVIIDA', :secret => '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')
    request << {'Operation' => 'ItemSearch', 'SearchIndex' => 'All', 'Keywords' => params[:name], 'ResponseGroup' => 'Medium' }
    @response = request.get
  end
end
