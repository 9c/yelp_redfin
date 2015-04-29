class AddPhoneToYelpBusiness < ActiveRecord::Migration
  def change
    add_column :yelp_businesses, :phone, :string
    add_column :yelp_businesses, :display_phone, :string
    add_column :yelp_businesses, :image_url, :string
  end
end
