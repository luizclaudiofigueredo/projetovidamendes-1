require "test_helper"

class EstatisticasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estatistica = estatisticas(:one)
  end

  test "should get index" do
    get estatisticas_url
    assert_response :success
  end

  test "should get new" do
    get new_estatistica_url
    assert_response :success
  end

  test "should create estatistica" do
    assert_difference("Estatistica.count") do
      post estatisticas_url, params: { estatistica: { data_culto: @estatistica.data_culto, observacoes: @estatistica.observacoes, tema_culto: @estatistica.tema_culto, total_conversoes: @estatistica.total_conversoes, total_criancas: @estatistica.total_criancas, total_presentes: @estatistica.total_presentes, total_visitantes: @estatistica.total_visitantes } }
    end

    assert_redirected_to estatistica_url(Estatistica.last)
  end

  test "should show estatistica" do
    get estatistica_url(@estatistica)
    assert_response :success
  end

  test "should get edit" do
    get edit_estatistica_url(@estatistica)
    assert_response :success
  end

  test "should update estatistica" do
    patch estatistica_url(@estatistica), params: { estatistica: { data_culto: @estatistica.data_culto, observacoes: @estatistica.observacoes, tema_culto: @estatistica.tema_culto, total_conversoes: @estatistica.total_conversoes, total_criancas: @estatistica.total_criancas, total_presentes: @estatistica.total_presentes, total_visitantes: @estatistica.total_visitantes } }
    assert_redirected_to estatistica_url(@estatistica)
  end

  test "should destroy estatistica" do
    assert_difference("Estatistica.count", -1) do
      delete estatistica_url(@estatistica)
    end

    assert_redirected_to estatisticas_url
  end
end
