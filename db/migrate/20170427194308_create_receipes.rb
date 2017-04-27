class CreateReceipes < ActiveRecord::Migration[5.0]
  def change
    create_table :receipes do |t|
      t.string :name
      t.string :ingredients
      t.string :instructions
      t.string :category
      t.references :baker, foreign_key: true
    end
  end
end
