class Spree::BridalRegistriesController < Spree::StoreController
  helper 'spree/products'

  before_action :find_bridal_registry, only: [:destroy, :show, :update, :edit]

  respond_to :html
  respond_to :js, only: :update

  # GET /bridal_registries
  # GET /bridal_registries.json
  def index
    @bridal_registries = spree_current_user.bridal_registries
    respond_with(@bridal_registry)
  end

  # GET /bridal_registries/1
  # GET /bridal_registries/1.json
  def show
    respond_with(@bridal_registry)
  end
  
  def default
    @bridal_registry = spree_current_user.bridal_registry
    respond_with(@bridal_registry) do |format|
      format.html { render :show }
    end
  end

  # GET /bridal_registries/new
  def new
    @bridal_registry = Spree::BridalRegistry.new
    respond_with(@bridal_registry)
  end

  # GET /bridal_registries/1/edit
  def edit
    respond_with(@bridal_registry)
  end

  # POST /bridal_registries
  # POST /bridal_registries.json
  def create
    @bridal_registry = Spree::BridalRegistry.new bridal_registry_attributes
    @bridal_registry.user = spree_current_user
    @bridal_registry.save
    respond_with(@bridal_registry)
  end

  # PATCH/PUT /bridal_registries/1
  # PATCH/PUT /bridal_registries/1.json
  def update
    @bridal_registry.update_attributes bridal_registry_attributes
    respond_with(@bridal_registry)
  end

  # DELETE /bridal_registries/1
  # DELETE /bridal_registries/1.json
  def destroy
    @bridal_registry.destroy
    respond_with(@bridal_registry) do |format|
      format.html { redirect_to account_path }
    end
  end

  private
  def bridal_registry_attributes
    params.require(:bridal_registry).permit(:name, :is_default, :is_private)
  end

  # Isolate this method so it can be overwritten
  def find_bridal_registry
    @bridal_registry = Spree::BridalRegistry.find_by_access_hash!(params[:id])
  end
end
