# This migration comes from spree_wishlist (originally 20150821132137)
class AddIndexToBridalRegistries < ActiveRecord::Migration
  def change
    add_index :spree_bridal_registries, [:user_id]
    add_index :spree_bridal_registries, [:user_id, :is_default]
  end
end