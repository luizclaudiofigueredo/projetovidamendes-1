class ApresentacaosController < ApplicationController
  before_action :set_apresentacao, only: %i[ show edit update destroy ]

  # GET /apresentacaos or /apresentacaos.json
  def index
    @apresentacaos = Apresentacao.all
  end

  # GET /apresentacaos/1 or /apresentacaos/1.json
  def show
  end

  # GET /apresentacaos/new
  def new
    @apresentacao = Apresentacao.new
  end

  # GET /apresentacaos/1/edit
  def edit
  end

  # POST /apresentacaos or /apresentacaos.json
  def create
    @apresentacao = Apresentacao.new(apresentacao_params)

    respond_to do |format|
      if @apresentacao.save
        format.html { redirect_to apresentacao_url(@apresentacao), notice: "Apresentacao was successfully created." }
        format.json { render :show, status: :created, location: @apresentacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apresentacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apresentacaos/1 or /apresentacaos/1.json
  def update
    respond_to do |format|
      if @apresentacao.update(apresentacao_params)
        format.html { redirect_to apresentacao_url(@apresentacao), notice: "Apresentacao was successfully updated." }
        format.json { render :show, status: :ok, location: @apresentacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apresentacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apresentacaos/1 or /apresentacaos/1.json
  def destroy
    @apresentacao.destroy

    respond_to do |format|
      format.html { redirect_to apresentacaos_url, notice: "Apresentacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apresentacao
      @apresentacao = Apresentacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apresentacao_params
      params.require(:apresentacao).permit(:nome_bebe, :nome_mae, :nome_pai, :data_nascimento, :sexo, :data_apresentacao)
    end
end
