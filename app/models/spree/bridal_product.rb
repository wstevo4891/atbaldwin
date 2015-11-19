class Spree::BridalProduct < ActiveRecord::Base
  belongs_to :variant
  belongs_to :bridal_registry

  def total
    quantity * variant.price
  end

  def display_total
    Spree::Money.new(total)
  end

end