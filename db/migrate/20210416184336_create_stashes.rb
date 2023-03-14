class CreateStashes < ActiveRecord::Migration[6.1]
  def change
    create_table :stashes do |t|
      t.string :tea_name
      t.string :tea_type
      t.string :purchased_at
      t.string :stash_amount
      t.text :notes
      t.integer :user_id
    end
  end
end
