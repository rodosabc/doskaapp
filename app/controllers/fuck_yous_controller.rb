class FuckYousController < ApplicationController
  before_action :set_fuck_you, only: [:show, :edit, :update, :destroy]

  # GET /fuck_yous
  # GET /fuck_yous.json
  def index
    @fuck_yous = FuckYou.all
  end

  # GET /fuck_yous/1
  # GET /fuck_yous/1.json
  def show
  end

  # GET /fuck_yous/new
  def new
    @fuck_you = FuckYou.new
  end

  # GET /fuck_yous/1/edit
  def edit
  end

  # POST /fuck_yous
  # POST /fuck_yous.json
  def create
    @fuck_you = FuckYou.new(fuck_you_params)

    respond_to do |format|
      if @fuck_you.save
        format.html { redirect_to @fuck_you, notice: 'Fuck you was successfully created.' }
        format.json { render :show, status: :created, location: @fuck_you }
      else
        format.html { render :new }
        format.json { render json: @fuck_you.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuck_yous/1
  # PATCH/PUT /fuck_yous/1.json
  def update
    respond_to do |format|
      if @fuck_you.update(fuck_you_params)
        format.html { redirect_to @fuck_you, notice: 'Fuck you was successfully updated.' }
        format.json { render :show, status: :ok, location: @fuck_you }
      else
        format.html { render :edit }
        format.json { render json: @fuck_you.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuck_yous/1
  # DELETE /fuck_yous/1.json
  def destroy
    @fuck_you.destroy
    respond_to do |format|
      format.html { redirect_to fuck_yous_url, notice: 'Fuck you was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuck_you
      @fuck_you = FuckYou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuck_you_params
      params.require(:fuck_you).permit(:fuck_yourself_counter)
    end
end
