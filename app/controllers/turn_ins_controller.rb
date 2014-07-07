class TurnInsController < ApplicationController
  before_action :set_turn_in, only: [:show, :edit, :update, :destroy]

  # GET /turn_ins
  # GET /turn_ins.json
  def index
    @turn_ins = TurnIn.all
  end

  # GET /turn_ins/1
  # GET /turn_ins/1.json
  def show
  end

  # GET /turn_ins/new
  def new
    @turn_in = TurnIn.new
  end

  # GET /turn_ins/1/edit
  def edit
  end

  # POST /turn_ins
  # POST /turn_ins.json
  def create
    @turn_in = TurnIn.new(turn_in_params)

    respond_to do |format|
      if @turn_in.save
        format.html { redirect_to @turn_in, notice: 'Turn in was successfully created.' }
        format.json { render :show, status: :created, location: @turn_in }
      else
        format.html { render :new }
        format.json { render json: @turn_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turn_ins/1
  # PATCH/PUT /turn_ins/1.json
  def update
    respond_to do |format|
      if @turn_in.update(turn_in_params)
        format.html { redirect_to @turn_in, notice: 'Turn in was successfully updated.' }
        format.json { render :show, status: :ok, location: @turn_in }
      else
        format.html { render :edit }
        format.json { render json: @turn_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turn_ins/1
  # DELETE /turn_ins/1.json
  def destroy
    @turn_in.destroy
    respond_to do |format|
      format.html { redirect_to turn_ins_url, notice: 'Turn in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turn_in
      @turn_in = TurnIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turn_in_params
      params.require(:turn_in).permit(:user_id, :assignment_id, :url, :completed)
    end
end
