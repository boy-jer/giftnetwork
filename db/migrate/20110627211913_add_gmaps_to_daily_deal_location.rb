class AddGmapsToDailyDealLocation < ActiveRecord::Migration
  def self.up
    add_column :daily_deal_locations, :latitude, :float
    add_column :daily_deal_locations, :longitude, :float
    add_column :daily_deal_locations, :gmaps, :boolean
  end

  def self.down
    remove_column :daily_deal_locations, :gmaps
    remove_column :daily_deal_locations, :longitude
    remove_column :daily_deal_locations, :latitude
  end
end
