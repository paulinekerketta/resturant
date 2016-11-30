class DailycashesController < ApplicationController
  before_action :set_dailycash, only: [:show, :edit, :update, :destroy]

  # GET /dailycashes
  # GET /dailycashes.json
  def index
    @dailycashes = Dailycash.all
  end

  # GET /dailycashes/1
  # GET /dailycashes/1.json
  def show
  end

  # GET /dailycashes/new
  def new
    @dailycash = Dailycash.new
  end

  # GET /dailycashes/1/edit
  def edit
  end

  # POST /dailycashes
  # POST /dailycashes.json
  def create
    @dailycash = Dailycash.new(dailycash_params)

    respond_to do |format|
      if @dailycash.save
        format.html { redirect_to @dailycash, notice: 'Dailycash was successfully created.' }
        format.json { render :show, status: :created, location: @dailycash }
      else
        format.html { render :new }
        format.json { render json: @dailycash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dailycashes/1
  # PATCH/PUT /dailycashes/1.json
  def update
    respond_to do |format|
      if @dailycash.update(dailycash_params)
        format.html { redirect_to @dailycash, notice: 'Dailycash was successfully updated.' }
        format.json { render :show, status: :ok, location: @dailycash }
      else
        format.html { render :edit }
        format.json { render json: @dailycash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailycashes/1
  # DELETE /dailycashes/1.json
  def destroy
    @dailycash.destroy
    respond_to do |format|
      format.html { redirect_to dailycashes_url, notice: 'Dailycash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dailycash
      @dailycash = Dailycash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dailycash_params
      params.require(:dailycash).permit(:date, :sale, :discount, :pay_card, :paid_online, :purchase, :driver_paid, :lodgement, :over_under)
    end
end
