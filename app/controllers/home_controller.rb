class HomeController < ApplicationController
  layout 'none'
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
  def entertainment_results
    #Groupon
    require 'open-uri'
    query = ActiveSupport::JSON.decode(open("http://api.groupon.com/v2/deals/?client_id=1264602292deb8d881b0e32282785495dd783bf8").read)
    @groupon_result = query.to_hash
  end
  
  def search_result
    
  end
  
  
end
