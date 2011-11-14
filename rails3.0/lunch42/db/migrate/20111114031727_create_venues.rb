class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.decimal :distance
      t.string :web_url
      t.string :menu_url
      t.decimal :price
      t.decimal :category
      t.decimal :yelpid
      t.decimal :rating
      
      
      t.timestamps
    end
  end

  def self.down
    drop_table :venues
  end
end
