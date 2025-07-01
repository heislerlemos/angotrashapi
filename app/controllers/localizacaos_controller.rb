class LocalizacaosController < ApplicationController
  before_action :set_localizacao, only: %i[ show update destroy ]

  # GET /localizacaos
  def index
    @localizacaos = Localizacao.all

    render json: @localizacaos
  end

  # GET /localizacaos/1
  def show
    render json: @localizacao
  end

  # POST /localizacaos
  def create
    @localizacao = Localizacao.new(localizacao_params)

    if @localizacao.save
      render json: @localizacao, status: :created, location: @localizacao
    else
      render json: @localizacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /localizacaos/1
  def update
    if @localizacao.update(localizacao_params)
      render json: @localizacao
    else
      render json: @localizacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /localizacaos/1
  def destroy
    @localizacao.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localizacao
      @localizacao = Localizacao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def localizacao_params
      params.expect(localizacao: [ :imagem, :zona, :recolha, :postodelixo, :agentenome1, :agentenumero1, :agentenome2, :agentenumero2, :agentenome3, :agentenumero3, :agentenome4, :agentenumero4, :agentenome5, :agentenumero5 ])
    end
end
