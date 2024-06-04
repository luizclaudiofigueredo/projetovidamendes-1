class EstatisticasController < ApplicationController
  before_action :set_estatistica, only: %i[ show edit update destroy ]

  # GET /estatisticas or /estatisticas.json
  def index
    @pagy, @estatisticas = pagy(Estatistica.all.order(created_at: :desc))
  end

  # GET /estatisticas/1 or /estatisticas/1.json
  def show
  end

  # GET /estatisticas/new
  def new
    @estatistica = Estatistica.new
  end

  # GET /estatisticas/1/edit
  def edit
  end

  # POST /estatisticas or /estatisticas.json
  def create
    @estatistica = Estatistica.new(estatistica_params)

    respond_to do |format|
      if @estatistica.save
        format.html { redirect_to estatistica_url(@estatistica), notice: "Estatistica was successfully created." }
        format.json { render :show, status: :created, location: @estatistica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estatistica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estatisticas/1 or /estatisticas/1.json
  def update
    respond_to do |format|
      if @estatistica.update(estatistica_params)
        format.html { redirect_to estatistica_url(@estatistica), notice: "Estatistica was successfully updated." }
        format.json { render :show, status: :ok, location: @estatistica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estatistica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estatisticas/1 or /estatisticas/1.json
  def destroy
    @estatistica.destroy!

    respond_to do |format|
      format.html { redirect_to estatisticas_url, notice: "Estatistica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estatistica
      @estatistica = Estatistica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estatistica_params
      params.require(:estatistica).permit(:tema_culto, :data_culto, :total_presentes, :total_visitantes, :total_conversoes, :total_aliancados, :total_batismos, :total_criancas, :observacoes)
    end
end
