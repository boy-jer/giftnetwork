class CreateDailyDealTags < ActiveRecord::Migration
  def self.up
    create_table :daily_deal_tags do |t|
      t.string :name
      t.integer :daily_deal_id

      t.timestamps
    end
  end

  def self.down
    drop_table :daily_deal_tags
  end
end
