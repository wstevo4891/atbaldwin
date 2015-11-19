class Spree::BridalProductsController < Spree::StoreController
  respond_to :html

  def create
    @bridal_product = Spree::BridalProduct.new(bridal_product_attributes)
    @bridal_registry = spree_current_user.bridal_registry
    
    if @bridal_registry.include? params[:bridal_product][:variant_id]
      @bridal_product = @bridal_registry.bridal_products.detect { |wp| wp.variant_id == params[:bridal_product][:variant_id].to_i }
    else
      @bridal_product.bridal_registry = spree_current_user.bridal_registry
      @bridal_product.save
    end

    respond_with(@bridal_product) do |format|
      format.html { redirect_to bridal_registry_url(@bridal_registry) }
    end
  end

  def update
    @bridal_product = Spree::BridalProduct.find(params[:id])
    @bridal_product.update_attributes(bridal_product_attributes)

    respond_with(@bridal_product) do |format|
      format.html { redirect_to bridal_registry_url(@bridal_product.bridal_registry) }
    end
  end

  def destroy
    @bridal_product = Spree::BridalProduct.find(params[:id])
    @bridal_product.destroy

    respond_with(@bridal_product) do |format|
      format.html { redirect_to bridal_registry_url(@bridal_product.bridal_registry) }
    end
  end

  private

  def bridal_product_attributes
    params.require(:bridal_product).permit(:variant_id, :bridal_registry_id, :remark, :quantity)
  end
end