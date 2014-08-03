class StucksController < ApplicationController
  before_action :set_stuck, only: [:show, :edit, :update, :destroy]

  # GET /stucks
  # GET /stucks.json
  def index
    @stucks = Stuck.all
  end

  # GET /stucks/1
  # GET /stucks/1.json
  def show
  end

  # GET /stucks/new
  def new
    @stuck = Stuck.new
  end

  # GET /stucks/1/edit
  def edit
  end

  # POST /stucks
  # POST /stucks.json
  def create
    @stuck = Stuck.new(stuck_params)
    @stuck.user_id = current_user.id

    respond_to do |format|
      if @stuck.save
        format.html { redirect_to @stuck, notice: 'Stuck was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stuck }
      else
        format.html { render action: 'new' }
        format.json { render json: @stuck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stucks/1
  # PATCH/PUT /stucks/1.json
  def update
    respond_to do |format|
      if @stuck.update(stuck_params)
        format.html { redirect_to @stuck, notice: 'Stuck was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stuck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stucks/1
  # DELETE /stucks/1.json
  def destroy
    @stuck.destroy
    respond_to do |format|
      format.html { redirect_to stucks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stuck
      @stuck = Stuck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stuck_params
      params.require(:stuck).permit(:description)
    end
end
