class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :platform
      t.string :genre
      t.string :img_url
      t.integer :price

      t.timestamps
    end
  end
end
