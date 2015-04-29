class CreateYelpBusinesses < ActiveRecord::Migration
  def change
    create_table :yelp_businesses do |t|
      t.string :uid
      t.string :name
      t.string :url
      t.string :city
      t.string :display_address
      t.string :postal_code
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :state_code

      t.timestamps null: false
    end
  end
end
