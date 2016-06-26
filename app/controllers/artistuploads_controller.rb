class ArtistuploadsController < ApplicationController
  before_action :set_artistupload, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /artistuploads
  # GET /artistuploads.json
  def index
    @artistuploads = Artistupload.all
  end

  # GET /artistuploads/1
  # GET /artistuploads/1.json
  def show
     

  end

  # GET /artistuploads/new
  def new
    @artistupload = current_user.artistuploads.build
  end

  # GET /artistuploads/1/edit
  def edit
  end

  # POST /artistuploads
  # POST /artistuploads.json
  def create
    @artistupload = current_user.artistuploads.build(artistupload_params)

    respond_to do |format|
      if @artistupload.save
        format.html { redirect_to @artistupload, notice: 'Artistupload was successfully created.' }
        format.json { render :show, status: :created, location: @artistupload }
      else
        format.html { render :new }
        format.json { render json: @artistupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artistuploads/1
  # PATCH/PUT /artistuploads/1.json
  def update
    respond_to do |format|
      if @artistupload.update(artistupload_params)
        format.html { redirect_to @artistupload, notice: 'Artistupload was successfully updated.' }
        format.json { render :show, status: :ok, location: @artistupload }
      else
        format.html { render :edit }
        format.json { render json: @artistupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artistuploads/1
  # DELETE /artistuploads/1.json
  def destroy
    @artistupload.destroy
    respond_to do |format|
      format.html { redirect_to artistuploads_url, notice: 'Artistupload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artistupload
      @artistupload = Artistupload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artistupload_params
      params.require(:artistupload).permit(:title, :inspiration, :description, :image)
    end
end
