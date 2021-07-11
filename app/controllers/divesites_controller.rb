class DivesitesController < ApplicationController
  before_action :set_divesite, only: %i[ show edit update destroy ]

  # GET /divesites or /divesites.json
  def index
    @divesites = Divesite.all.order(id: :ASC)
  end

  # GET /divesites/1 or /divesites/1.json
  def show
  end

  # GET /divesites/new
  def new
    @divesite = Divesite.new
  end

  # GET /divesites/1/edit
  def edit
  end

  # POST /divesites or /divesites.json
  def create
    @divesite = Divesite.new(divesite_params)

    respond_to do |format|
      if @divesite.save
        format.html { redirect_to @divesite, notice: "Divesite was successfully created." }
        format.json { render :show, status: :created, location: @divesite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @divesite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divesites/1 or /divesites/1.json
  def update
    respond_to do |format|
      if @divesite.update(divesite_params)
        format.html { redirect_to @divesite, notice: "Divesite was successfully updated." }
        format.json { render :show, status: :ok, location: @divesite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @divesite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divesites/1 or /divesites/1.json
  def destroy
    @divesite.destroy
    respond_to do |format|
      format.html { redirect_to divesites_url, notice: "Divesite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divesite
      @divesite = Divesite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def divesite_params
      params.require(:divesite).permit(:name, :phone, :service, :discription,)
    end
end
