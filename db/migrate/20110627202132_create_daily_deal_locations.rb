class CreateDailyDealLocations < ActiveRecord::Migration
  def self.up
    create_table :daily_deal_locations do |t|
      t.integer :yipit_id
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.decimal :lat
      t.decimal :lon
      t.integer :daily_deal_id

      t.timestamps
    end
  end

  def self.down
    drop_table :daily_deal_locations
  end
end
