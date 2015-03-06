class RawnamesController < ApplicationController
  before_action :set_rawname, only: [:show, :edit, :update, :destroy]

  # GET /rawnames
  def index
    @rawnames = Rawname.all
  end

  # GET /rawnames/1
  def show
  end

  # GET /rawnames/new
  def new
    @rawname = Rawname.new
  end

  # GET /rawnames/1/edit
  def edit
  end

  # POST /rawnames
  def create
    @rawname = Rawname.new(rawname_params)

    if @rawname.save
      redirect_to @rawname, notice: 'Rawname was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rawnames/1
  def update
    if @rawname.update(rawname_params)
      redirect_to @rawname, notice: 'Rawname was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rawnames/1
  def destroy
    @rawname.destroy
    redirect_to rawnames_url, notice: 'Rawname was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rawname
      @rawname = Rawname.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rawname_params
      params.require(:rawname).permit(:system_id, :system_name)
    end
end
