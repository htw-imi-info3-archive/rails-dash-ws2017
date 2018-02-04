class PumpkinsController < ApplicationController
  before_action :set_pumpkin, only: [:show, :edit, :update, :destroy]

  # GET /pumpkins
  # GET /pumpkins.json
  def index
    @pumpkins = Pumpkin.all
      if params["pumpkinName"] 
          Pumpkin.all.searchPumpkin(params["pumpkinName"])
    end
      
        @show = t '.show'
        @edit = t '.edit'
        @delete = t '.delete'
        @new = t '.new'
        @search_for = t'.search_for'
      
        flash[:species] = t 'species'
        flash[:carved] = t 'carved'
        flash[:size] = t 'size'
        flash[:weight] = t 'weight'
        flash[:price] = t 'price'
        flash[:show] = t 'show'
        flash[:edit] = t 'edit'
        flash[:delete] = t 'delete'
        flash[:new] = t 'new'
        flash[:search] = t 'search'
        flash[:search_for] = t 'search_for'
      
      
  end

  # GET /pumpkins/1
  # GET /pumpkins/1.json
  def show
    @comments = @pumpkin.comments
  end

  # GET /pumpkins/new
  def new
    @pumpkin = Pumpkin.new
  end

  # GET /pumpkins/1/edit
  def edit
  end

  # POST /pumpkins
  # POST /pumpkins.json
  def create
    @pumpkin = Pumpkin.new(pumpkin_params)

    respond_to do |format|
      if @pumpkin.save
        format.html { redirect_to @pumpkin, notice: 'Pumpkin was successfully created.' }
        format.json { render :show, status: :created, location: @pumpkin }
      else
        format.html { render :new }
        format.json { render json: @pumpkin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pumpkins/1
  # PATCH/PUT /pumpkins/1.json
  def update
    respond_to do |format|
      if @pumpkin.update(pumpkin_params)
        format.html { redirect_to @pumpkin, notice: 'Pumpkin was successfully updated.' }
        format.json { render :show, status: :ok, location: @pumpkin }
      else
        format.html { render :edit }
        format.json { render json: @pumpkin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pumpkins/1
  # DELETE /pumpkins/1.json
  def destroy
    @pumpkin.destroy
    respond_to do |format|
      format.html { redirect_to pumpkins_url, notice: 'Pumpkin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pumpkin
      @pumpkin = Pumpkin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pumpkin_params
      params.require(:pumpkin).permit(:species, :carved, :size, :weight, :price)
    end
end
