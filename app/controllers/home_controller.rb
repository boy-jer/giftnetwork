class HomeController < ApplicationController
  def index
  end
  def search_results
    # Amazon
    request = Sucker.new( :locale => :us, :key => 'AKIAJY7TE7TS3ZZVIIDA', :secret => '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')
    request << {'Operation' => 'ItemSearch', 'SearchIndex' => 'All', 'Keywords' => params[:name], 'ResponseGroup' => 'Medium' }
    @response = request.get
    
    # Best Buy
    require 'open-uri'
    @best_buy_result = ActiveSupport::JSON.decode(open("http://api.remix.bestbuy.com/v1/products(search=#{params[:name]})?apiKey=9zvesrz4hn94ems64x47pqcd&format=json").read)
    
  end
end
