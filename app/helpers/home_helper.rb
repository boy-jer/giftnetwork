module HomeHelper
  def getAmazonImage(asin)
    image_request = Sucker.new( :locale => :us, :key => 'AKIAJY7TE7TS3ZZVIIDA', :secret => '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')
    image_request << {'Operation' => 'ItemLookup', 'IdType' => 'ASIN', 'ItemId' => asin, 'ResponseGroup' => 'Images'}
    image_response = image_request.get
    image_response.each('Item') do |image|
      if image['SmallImage'] != nil
        return image['SmallImage']['URL']
      else
        return false
      end
    end
  end
end
