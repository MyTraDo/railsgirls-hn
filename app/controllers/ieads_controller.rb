class IeadsController < ApplicationController
  before_action :set_iead, only: [:show, :edit, :update, :destroy]

  # GET /ieads
  # GET /ieads.json
  def index
    @ieads = Iead.all
  end

  # GET /ieads/1
  # GET /ieads/1.json
  def show
  end

  # GET /ieads/new
  def new
    @iead = Iead.new
  end

  # GET /ieads/1/edit
  def edit
  end

  # POST /ieads
  # POST /ieads.json
  def create
    @iead = Iead.new(iead_params)

    respond_to do |format|
      if @iead.save
        format.html { redirect_to @iead, notice: 'Iead was successfully created.' }
        format.json { render :show, status: :created, location: @iead }
      else
        format.html { render :new }
        format.json { render json: @iead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ieads/1
  # PATCH/PUT /ieads/1.json
  def update
    respond_to do |format|
      if @iead.update(iead_params)
        format.html { redirect_to @iead, notice: 'Iead was successfully updated.' }
        format.json { render :show, status: :ok, location: @iead }
      else
        format.html { render :edit }
        format.json { render json: @iead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ieads/1
  # DELETE /ieads/1.json
  def destroy
    @iead.destroy
    respond_to do |format|
      format.html { redirect_to ieads_url, notice: 'Iead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iead
      @iead = Iead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iead_params
      params.require(:iead).permit(:name, :description, :picture)
    end
end
