class ReadsController < ApplicationController
  before_action :set_read, only: %i[ show edit update destroy ]

  # GET /reads or /reads.json
  def index
    @reads = Read.all
  end

  # GET /reads/1 or /reads/1.json
  def show
  end

  # GET /reads/new
  def new
    @read = Read.new
  end

  # GET /reads/1/edit
  def edit
  end

  # POST /reads or /reads.json
  def create
    @read = Read.new(read_params)

    respond_to do |format|
      if @read.save
        format.html { redirect_to read_url(@read), notice: "Read was successfully created." }
        format.json { render :show, status: :created, location: @read }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @read.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reads/1 or /reads/1.json
  def update
    respond_to do |format|
      if @read.update(read_params)
        format.html { redirect_to read_url(@read), notice: "Read was successfully updated." }
        format.json { render :show, status: :ok, location: @read }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @read.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reads/1 or /reads/1.json
  def destroy
    @read.destroy!

    respond_to do |format|
      format.html { redirect_to reads_url, notice: "Read was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_read
      @read = Read.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def read_params
      params.require(:read).permit(:stating_type)
    end
end