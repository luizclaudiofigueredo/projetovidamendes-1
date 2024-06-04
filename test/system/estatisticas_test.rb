require "application_system_test_case"

class EstatisticasTest < ApplicationSystemTestCase
  setup do
    @estatistica = estatisticas(:one)
  end

  test "visiting the index" do
    visit estatisticas_url
    assert_selector "h1", text: "Estatisticas"
  end

  test "should create estatistica" do
    visit estatisticas_url
    click_on "New estatistica"

    fill_in "Data culto", with: @estatistica.data_culto
    fill_in "Observacoes", with: @estatistica.observacoes
    fill_in "Tema culto", with: @estatistica.tema_culto
    fill_in "Total conversoes", with: @estatistica.total_conversoes
    fill_in "Total criancas", with: @estatistica.total_criancas
    fill_in "Total presentes", with: @estatistica.total_presentes
    fill_in "Total visitantes", with: @estatistica.total_visitantes
    click_on "Create Estatistica"

    assert_text "Estatistica was successfully created"
    click_on "Back"
  end

  test "should update Estatistica" do
    visit estatistica_url(@estatistica)
    click_on "Edit this estatistica", match: :first

    fill_in "Data culto", with: @estatistica.data_culto
    fill_in "Observacoes", with: @estatistica.observacoes
    fill_in "Tema culto", with: @estatistica.tema_culto
    fill_in "Total conversoes", with: @estatistica.total_conversoes
    fill_in "Total criancas", with: @estatistica.total_criancas
    fill_in "Total presentes", with: @estatistica.total_presentes
    fill_in "Total visitantes", with: @estatistica.total_visitantes
    click_on "Update Estatistica"

    assert_text "Estatistica was successfully updated"
    click_on "Back"
  end

  test "should destroy Estatistica" do
    visit estatistica_url(@estatistica)
    click_on "Destroy this estatistica", match: :first

    assert_text "Estatistica was successfully destroyed"
  end
end
