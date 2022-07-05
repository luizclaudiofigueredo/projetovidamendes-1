require "test_helper"

class ApresentacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apresentacao = apresentacaos(:one)
  end

  test "should get index" do
    get apresentacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_apresentacao_url
    assert_response :success
  end

  test "should create apresentacao" do
    assert_difference("Apresentacao.count") do
      post apresentacaos_url, params: { apresentacao: { data_apresentacao: @apresentacao.data_apresentacao, data_nascimento: @apresentacao.data_nascimento, nome_bebe: @apresentacao.nome_bebe, nome_mae: @apresentacao.nome_mae, nome_pai: @apresentacao.nome_pai, sexo: @apresentacao.sexo } }
    end

    assert_redirected_to apresentacao_url(Apresentacao.last)
  end

  test "should show apresentacao" do
    get apresentacao_url(@apresentacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_apresentacao_url(@apresentacao)
    assert_response :success
  end

  test "should update apresentacao" do
    patch apresentacao_url(@apresentacao), params: { apresentacao: { data_apresentacao: @apresentacao.data_apresentacao, data_nascimento: @apresentacao.data_nascimento, nome_bebe: @apresentacao.nome_bebe, nome_mae: @apresentacao.nome_mae, nome_pai: @apresentacao.nome_pai, sexo: @apresentacao.sexo } }
    assert_redirected_to apresentacao_url(@apresentacao)
  end

  test "should destroy apresentacao" do
    assert_difference("Apresentacao.count", -1) do
      delete apresentacao_url(@apresentacao)
    end

    assert_redirected_to apresentacaos_url
  end
end
