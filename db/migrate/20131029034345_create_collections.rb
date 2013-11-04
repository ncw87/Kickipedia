class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.references :shoe, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
