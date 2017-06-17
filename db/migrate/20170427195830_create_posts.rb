class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :ingredients
      t.string :instructions
      t.string :category
      t.references :topic, foreign_key: true
    end
  end
end
