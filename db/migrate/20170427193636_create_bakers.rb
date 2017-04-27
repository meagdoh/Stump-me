class CreateBakers < ActiveRecord::Migration[5.0]
  def change
    create_table :bakers do |t|
      t.string :name
      t.string :img_url
      t.string :bio
    end
  end
end
