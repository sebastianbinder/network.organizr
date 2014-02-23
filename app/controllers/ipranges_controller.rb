class IprangesController < ApplicationController
  before_action :set_iprange, only: [:show, :edit, :update, :destroy]

  # GET /ip_ranges
  # GET /ip_ranges.json
  def index
    @ipranges = Iprange.all
  end

  # GET /ip_ranges/1
  # GET /ip_ranges/1.json
  def show
  end

  # GET /ip_ranges/new
  def new
    @iprange = Iprange.new
  end

  # GET /ip_ranges/1/edit
  def edit
  end

  # POST /ip_ranges
  # POST /ip_ranges.json
  def create
    @iprange = Iprange.new(iprange_params)

    respond_to do |format|
      if @iprange.save
        format.html { redirect_to @iprange, notice: 'Ip range was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ip_range }
      else
        format.html { render action: 'new' }
        format.json { render json: @iprange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip_ranges/1
  # PATCH/PUT /ip_ranges/1.json
  def update
    respond_to do |format|
      if @iprange.update(iprange_params)
        format.html { redirect_to @iprange, notice: 'Ip range was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @iprange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip_ranges/1
  # DELETE /ip_ranges/1.json
  def destroy
    @iprange.destroy
    respond_to do |format|
      format.html { redirect_to ip_ranges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iprange
      @iprange = Iprange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iprange_params
      params.require(:iprange).permit(:name, :ipbase)
    end
end
