class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :subject_name
      t.string :img_url
    end
  end
end
