class CreateKitchenAndBars < ActiveRecord::Migration
  def change
    create_table :kitchen_and_bars do |t|

      t.timestamps null: false
    end
  end
end
