class CreateDailyDeals < ActiveRecord::Migration
  def self.up
    create_table :daily_deals do |t|
      t.integer :yipit_id
      t.date :date_added
      t.date :end_date
      t.string :discount
      t.decimal :price
      t.decimal :value
      t.string :title
      t.string :yipit_title
      t.string :yipit_url
      t.string :large_image
      t.string :small_image
      t.string :division
      t.integer :yipit_business_id
      t.string :yipit_business_name
      t.string :yipit_business_url
      t.string :source_name

      t.timestamps
    end
  end

  def self.down
    drop_table :daily_deals
  end
end
