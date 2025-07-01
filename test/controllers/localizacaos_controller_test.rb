require "test_helper"

class LocalizacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localizacao = localizacaos(:one)
  end

  test "should get index" do
    get localizacaos_url, as: :json
    assert_response :success
  end

  test "should create localizacao" do
    assert_difference("Localizacao.count") do
      post localizacaos_url, params: { localizacao: { agentenome1: @localizacao.agentenome1, agentenome2: @localizacao.agentenome2, agentenome3: @localizacao.agentenome3, agentenome4: @localizacao.agentenome4, agentenome5: @localizacao.agentenome5, agentenumero1: @localizacao.agentenumero1, agentenumero2: @localizacao.agentenumero2, agentenumero3: @localizacao.agentenumero3, agentenumero4: @localizacao.agentenumero4, agentenumero5: @localizacao.agentenumero5, imagem: @localizacao.imagem, postodelixo: @localizacao.postodelixo, recolha: @localizacao.recolha, zona: @localizacao.zona } }, as: :json
    end

    assert_response :created
  end

  test "should show localizacao" do
    get localizacao_url(@localizacao), as: :json
    assert_response :success
  end

  test "should update localizacao" do
    patch localizacao_url(@localizacao), params: { localizacao: { agentenome1: @localizacao.agentenome1, agentenome2: @localizacao.agentenome2, agentenome3: @localizacao.agentenome3, agentenome4: @localizacao.agentenome4, agentenome5: @localizacao.agentenome5, agentenumero1: @localizacao.agentenumero1, agentenumero2: @localizacao.agentenumero2, agentenumero3: @localizacao.agentenumero3, agentenumero4: @localizacao.agentenumero4, agentenumero5: @localizacao.agentenumero5, imagem: @localizacao.imagem, postodelixo: @localizacao.postodelixo, recolha: @localizacao.recolha, zona: @localizacao.zona } }, as: :json
    assert_response :success
  end

  test "should destroy localizacao" do
    assert_difference("Localizacao.count", -1) do
      delete localizacao_url(@localizacao), as: :json
    end

    assert_response :no_content
  end
end
