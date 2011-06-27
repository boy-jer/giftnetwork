class DailyDealLocation < ActiveRecord::Base
  acts_as_gmappable
  belongs_to :daily_deal
  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address}, #{self.city}, #{self.state}, #{self.zip}"
  end
  def gmaps4rails_infowindow
    "<img src='#{self.daily_deal.small_image}' align='left' style='max-height:100px;margin-right:15px;' /><b>#{self.daily_deal.yipit_title}</b><br>Found through: #{self.daily_deal.source_name}"
  end
end
