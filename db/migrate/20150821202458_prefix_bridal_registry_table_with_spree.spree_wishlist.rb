# This migration comes from spree_wishlist (originally 20150821131925)
class PrefixBridalRegistryTableWithSpree < ActiveRecord::Migration
  def change
    rename_table :bridal_registries, :spree_bridal_registries
  end
end