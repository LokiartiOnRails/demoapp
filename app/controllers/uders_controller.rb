class UdersController < ApplicationController
  before_action :set_uder, only: [:show, :edit, :update, :destroy]

  # GET /uders
  # GET /uders.json
  def index
    @uders = Uder.all
  end

  # GET /uders/1
  # GET /uders/1.json
  def show
  end

  # GET /uders/new
  def new
    @uder = Uder.new
  end

  # GET /uders/1/edit
  def edit
  end

  # POST /uders
  # POST /uders.json
  def create
    @uder = Uder.new(uder_params)

    respond_to do |format|
      if @uder.save
        format.html { redirect_to @uder, notice: 'Uder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @uder }
      else
        format.html { render action: 'new' }
        format.json { render json: @uder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uders/1
  # PATCH/PUT /uders/1.json
  def update
    respond_to do |format|
      if @uder.update(uder_params)
        format.html { redirect_to @uder, notice: 'Uder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @uder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uders/1
  # DELETE /uders/1.json
  def destroy
    @uder.destroy
    respond_to do |format|
      format.html { redirect_to uders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uder
      @uder = Uder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uder_params
      params.require(:uder).permit(:name, :email)
    end
end
