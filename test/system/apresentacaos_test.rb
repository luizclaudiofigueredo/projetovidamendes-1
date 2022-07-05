require "application_system_test_case"

class ApresentacaosTest < ApplicationSystemTestCase
  setup do
    @apresentacao = apresentacaos(:one)
  end

  test "visiting the index" do
    visit apresentacaos_url
    assert_selector "h1", text: "Apresentacaos"
  end

  test "should create apresentacao" do
    visit apresentacaos_url
    click_on "New apresentacao"

    fill_in "Data apresentacao", with: @apresentacao.data_apresentacao
    fill_in "Data nascimento", with: @apresentacao.data_nascimento
    fill_in "Nome bebe", with: @apresentacao.nome_bebe
    fill_in "Nome mae", with: @apresentacao.nome_mae
    fill_in "Nome pai", with: @apresentacao.nome_pai
    fill_in "Sexo", with: @apresentacao.sexo
    click_on "Create Apresentacao"

    assert_text "Apresentacao was successfully created"
    click_on "Back"
  end

  test "should update Apresentacao" do
    visit apresentacao_url(@apresentacao)
    click_on "Edit this apresentacao", match: :first

    fill_in "Data apresentacao", with: @apresentacao.data_apresentacao
    fill_in "Data nascimento", with: @apresentacao.data_nascimento
    fill_in "Nome bebe", with: @apresentacao.nome_bebe
    fill_in "Nome mae", with: @apresentacao.nome_mae
    fill_in "Nome pai", with: @apresentacao.nome_pai
    fill_in "Sexo", with: @apresentacao.sexo
    click_on "Update Apresentacao"

    assert_text "Apresentacao was successfully updated"
    click_on "Back"
  end

  test "should destroy Apresentacao" do
    visit apresentacao_url(@apresentacao)
    click_on "Destroy this apresentacao", match: :first

    assert_text "Apresentacao was successfully destroyed"
  end
end
