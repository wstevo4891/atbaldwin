class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|

      t.timestamps null: false
    end
  end
end
