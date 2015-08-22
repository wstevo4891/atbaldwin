# This migration comes from spree_wishlist (originally 20150821180442)
class RemoveBridalProductsForDeletedVariants < ActiveRecord::Migration
  def up
    Spree::BridalProduct.includes(:variant).find_each do |bridal_product|
      bridal_product.destroy unless bridal_product.variant
    end
  end

  def down
  end
end
