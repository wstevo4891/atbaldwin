# This migration comes from spree_wishlist (originally 20150821180000)
class CreateBridalProducts < ActiveRecord::Migration
  def self.up
    create_table :spree_bridal_products do |t|
      t.references :variant
      t.references :bridal_registry
      t.text :remark
      t.integer :quantity, null: false, default: 1

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :spree_bridal_products
  end
end