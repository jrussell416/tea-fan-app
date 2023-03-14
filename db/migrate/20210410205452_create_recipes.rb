class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :recipe_type
      t.text :instructions
      t.string :recipe_url
      t.string :submitted_by
      t.integer :user_id
    end
  end
end
