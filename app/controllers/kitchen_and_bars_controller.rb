class KitchenAndBarsController < ApplicationController
  before_action :set_kitchen_and_bar, only: [:show, :edit, :update, :destroy]

  # GET /kitchen_and_bars
  # GET /kitchen_and_bars.json
  def index
    @kitchen_and_bars = KitchenAndBar.all
  end

  # GET /kitchen_and_bars/1
  # GET /kitchen_and_bars/1.json
  def show
  end

  # GET /kitchen_and_bars/new
  def new
    @kitchen_and_bar = KitchenAndBar.new
  end

  # GET /kitchen_and_bars/1/edit
  def edit
  end

  # POST /kitchen_and_bars
  # POST /kitchen_and_bars.json
  def create
    @kitchen_and_bar = KitchenAndBar.new(kitchen_and_bar_params)

    respond_to do |format|
      if @kitchen_and_bar.save
        format.html { redirect_to @kitchen_and_bar, notice: 'Kitchen and bar was successfully created.' }
        format.json { render :show, status: :created, location: @kitchen_and_bar }
      else
        format.html { render :new }
        format.json { render json: @kitchen_and_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitchen_and_bars/1
  # PATCH/PUT /kitchen_and_bars/1.json
  def update
    respond_to do |format|
      if @kitchen_and_bar.update(kitchen_and_bar_params)
        format.html { redirect_to @kitchen_and_bar, notice: 'Kitchen and bar was successfully updated.' }
        format.json { render :show, status: :ok, location: @kitchen_and_bar }
      else
        format.html { render :edit }
        format.json { render json: @kitchen_and_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitchen_and_bars/1
  # DELETE /kitchen_and_bars/1.json
  def destroy
    @kitchen_and_bar.destroy
    respond_to do |format|
      format.html { redirect_to kitchen_and_bars_url, notice: 'Kitchen and bar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitchen_and_bar
      @kitchen_and_bar = KitchenAndBar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kitchen_and_bar_params
      params[:kitchen_and_bar]
    end
end
