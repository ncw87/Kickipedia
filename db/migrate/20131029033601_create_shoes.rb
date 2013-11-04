class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.text :description
      t.string :release_date
      t.string :image
      t.string :brand

      t.timestamps
    end
  end
end
