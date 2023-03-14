class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :shop_url
      t.string :street_address
      t.string :city
      t.string :country
      t.integer :user_id
    end
  end
end
