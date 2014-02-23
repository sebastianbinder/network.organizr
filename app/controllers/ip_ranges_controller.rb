class IpRangesController < ApplicationController
  before_action :set_ip_range, only: [:show, :edit, :update, :destroy]

  # GET /ip_ranges
  # GET /ip_ranges.json
  def index
    @ip_ranges = IpRange.all
  end

  # GET /ip_ranges/1
  # GET /ip_ranges/1.json
  def show
  end

  # GET /ip_ranges/new
  def new
    @ip_range = IpRange.new
  end

  # GET /ip_ranges/1/edit
  def edit
  end

  # POST /ip_ranges
  # POST /ip_ranges.json
  def create
    @ip_range = IpRange.new(ip_range_params)

    respond_to do |format|
      if @ip_range.save
        format.html { redirect_to @ip_range, notice: 'Ip range was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ip_range }
      else
        format.html { render action: 'new' }
        format.json { render json: @ip_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip_ranges/1
  # PATCH/PUT /ip_ranges/1.json
  def update
    respond_to do |format|
      if @ip_range.update(ip_range_params)
        format.html { redirect_to @ip_range, notice: 'Ip range was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ip_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip_ranges/1
  # DELETE /ip_ranges/1.json
  def destroy
    @ip_range.destroy
    respond_to do |format|
      format.html { redirect_to ip_ranges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip_range
      @ip_range = IpRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ip_range_params
      params.require(:ip_range).permit(:name, :ipbase)
    end
end
