class StatistcsController < ApplicationController
  before_action :set_statistc, only: [:show, :edit, :update, :destroy]

  # GET /statistcs
  # GET /statistcs.json
  def index
    @statistcs = Statistc.all
    
    #@stats = {}

    #CSV.foreach("#{Rails.root}/kpi.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
    #@stats[row.fields[1]] = Hash[row.headers[0..-1].zip(row.fields[0..-1])]
    #end 
  end

  # GET /statistcs/1
  # GET /statistcs/1.json
  def show
  end

  # GET /statistcs/new
  def new
    @statistc = Statistc.new
  end

  # GET /statistcs/1/edit
  def edit
  end

  # POST /statistcs
  # POST /statistcs.json
  def create
    @statistc = Statistc.new(statistc_params)

    respond_to do |format|
      if @statistc.save
        format.html { redirect_to @statistc, notice: 'Statistc was successfully created.' }
        format.json { render :show, status: :created, location: @statistc }
      else
        format.html { render :new }
        format.json { render json: @statistc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statistcs/1
  # PATCH/PUT /statistcs/1.json
  def update
    respond_to do |format|
      if @statistc.update(statistc_params)
        format.html { redirect_to @statistc, notice: 'Statistc was successfully updated.' }
        format.json { render :show, status: :ok, location: @statistc }
      else
        format.html { render :edit }
        format.json { render json: @statistc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statistcs/1
  # DELETE /statistcs/1.json
  def destroy
    @statistc.destroy
    respond_to do |format|
      format.html { redirect_to statistcs_url, notice: 'Statistc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def import
    Statistc.import(params[:file])
    redirect_to statistcs_path, notice: "Stats Added Successfully"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistc
      @statistc = Statistc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statistc_params
      params.require(:statistc).permit(:callname, :date, :accessability, :retainability)
    end
end
