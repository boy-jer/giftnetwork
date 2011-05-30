class CreateWishlists < ActiveRecord::Migration
  def self.up
    create_table :wishlists do |t|
      t.integer :member_id
      t.string :product_origin
      t.string :product_identifier

      t.timestamps
    end
  end

  def self.down
    drop_table :wishlists
  end
end
