class TipoMineracaosController < ApplicationController
  before_action :set_tipo_mineracao, only: %i[ show edit update destroy ]
  # before_action :authorize

  # GET /tipo_mineracaos or /tipo_mineracaos.json
  def index
    @tipo_mineracaos = TipoMineracao.all#.paginate(page: params[:page], per_page: 3)
  end

  # GET /tipo_mineracaos/1 or /tipo_mineracaos/1.json
  def show
  end

  # GET /tipo_mineracaos/new
  def new
    @tipo_mineracao = TipoMineracao.new
  end

  # GET /tipo_mineracaos/1/edit
  def edit
  end

  # POST /tipo_mineracaos or /tipo_mineracaos.json
  def create
    @tipo_mineracao = TipoMineracao.new(tipo_mineracao_params)

    respond_to do |format|
      if @tipo_mineracao.save
        format.html { redirect_to tipo_mineracao_url(@tipo_mineracao), notice: "Tipo mineracao was successfully created." }
        format.json { render :show, status: :created, location: @tipo_mineracao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_mineracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_mineracaos/1 or /tipo_mineracaos/1.json
  def update
    respond_to do |format|
      if @tipo_mineracao.update(tipo_mineracao_params)
        format.html { redirect_to tipo_mineracao_url(@tipo_mineracao), notice: "Tipo mineracao was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_mineracao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_mineracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_mineracaos/1 or /tipo_mineracaos/1.json
  def destroy
    @tipo_mineracao.destroy

    respond_to do |format|
      format.html { redirect_to tipo_mineracaos_url, notice: "Tipo mineracao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_mineracao
      @tipo_mineracao = TipoMineracao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_mineracao_params
      params.require(:tipo_mineracao).permit(:descricao, :acron)
    end
end
