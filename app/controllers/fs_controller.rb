class FsController < ApplicationController
  before_action :set_f, only: [:show, :edit, :update, :destroy]

  # GET /fs
  # GET /fs.json
  def index
    @fs = F.all
  end

  # GET /fs/1
  # GET /fs/1.json
  def show
  end

  # GET /fs/new
  def new
    @f = F.new
  end

  # GET /fs/1/edit
  def edit
  end

  # POST /fs
  # POST /fs.json
  def create
    @f = F.new(f_params)

    respond_to do |format|
      if @f.save
        format.html { redirect_to @f, notice: 'F was successfully created.' }
        format.json { render :show, status: :created, location: @f }
      else
        format.html { render :new }
        format.json { render json: @f.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fs/1
  # PATCH/PUT /fs/1.json
  def update
    respond_to do |format|
      if @f.update(f_params)
        format.html { redirect_to @f, notice: 'F was successfully updated.' }
        format.json { render :show, status: :ok, location: @f }
      else
        format.html { render :edit }
        format.json { render json: @f.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fs/1
  # DELETE /fs/1.json
  def destroy
    @f.destroy
    respond_to do |format|
      format.html { redirect_to fs_url, notice: 'F was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f
      @f = F.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_params
      params.require(:f).permit(:Name)
    end
end
