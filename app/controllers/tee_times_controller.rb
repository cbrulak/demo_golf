class TeeTimesController < ApplicationController
  before_action :set_tee_time, only: [:show, :edit, :update, :destroy]

  # GET /tee_times
  # GET /tee_times.json
  def index
    @tee_times = TeeTime.all
  end

  # GET /tee_times/1
  # GET /tee_times/1.json
  def show
  end

  # GET /tee_times/new
  def new
    @tee_time = TeeTime.new
  end

  # GET /tee_times/1/edit
  def edit
  end

  # POST /tee_times
  # POST /tee_times.json
  def create
    @tee_time = TeeTime.new(tee_time_params)

    respond_to do |format|
      if @tee_time.save
        format.html { redirect_to root_url }
        format.json { render :show, status: :created, location: @tee_time }
      else
        format.html { render :new }
        format.json { render json: @tee_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tee_times/1
  # PATCH/PUT /tee_times/1.json
  def update
    respond_to do |format|
      if @tee_time.update(tee_time_params)
        format.html { redirect_to root_url }
        format.json { render :show, status: :ok, location: @tee_time }
      else
        format.html { render :edit }
        format.json { render json: @tee_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tee_times/1
  # DELETE /tee_times/1.json
  def destroy
    @tee_time.destroy
    respond_to do |format|
      format.html { redirect_to root_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tee_time
      @tee_time = TeeTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tee_time_params
      params.require(:tee_time).permit(:start, :end, :length, :Booking_id)
    end
end
