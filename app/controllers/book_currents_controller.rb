class BookCurrentsController < ApplicationController
  before_action :set_book_current, only: %i[ show edit update destroy ]

  # GET /book_currents or /book_currents.json
  def index
    @book_currents = BookCurrent.all
  end

  # GET /book_currents/1 or /book_currents/1.json
  def show
  end

  # GET /book_currents/new
  def new
    @book_current = BookCurrent.new
  end

  # GET /book_currents/1/edit
  def edit
  end

  # POST /book_currents or /book_currents.json
  def create
    @book_current = BookCurrent.new(book_current_params)

    respond_to do |format|
      if @book_current.save
        format.html { redirect_to book_current_url(@book_current), notice: "Book current was successfully created." }
        format.json { render :show, status: :created, location: @book_current }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_current.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_currents/1 or /book_currents/1.json
  def update
    respond_to do |format|
      if @book_current.update(book_current_params)
        format.html { redirect_to book_current_url(@book_current), notice: "Book current was successfully updated." }
        format.json { render :show, status: :ok, location: @book_current }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_current.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_currents/1 or /book_currents/1.json
  def destroy
    @book_current.destroy!

    respond_to do |format|
      format.html { redirect_to book_currents_url, notice: "Book current was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_current
      @book_current = BookCurrent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_current_params
      params.require(:book_current).permit(:current_type)
    end
end
