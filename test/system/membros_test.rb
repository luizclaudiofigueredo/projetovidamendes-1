require "application_system_test_case"

class MembrosTest < ApplicationSystemTestCase
  setup do
    @membro = membros(:one)
  end

  test "visiting the index" do
    visit membros_url
    assert_selector "h1", text: "Membros"
  end

  test "should create membro" do
    visit membros_url
    click_on "New membro"

    fill_in "Bairro", with: @membro.bairro
    fill_in "Cidade", with: @membro.cidade
    fill_in "Data alianca", with: @membro.data_alianca
    fill_in "Data batismo", with: @membro.data_batismo
    fill_in "Data desligamento", with: @membro.data_desligamento
    fill_in "Data nascimento", with: @membro.data_nascimento
    fill_in "Email", with: @membro.email
    fill_in "Endereco", with: @membro.endereco
    fill_in "Nome", with: @membro.nome
    fill_in "Observacoes", with: @membro.observacoes
    fill_in "Situacao", with: @membro.situacao
    fill_in "Sobrenome", with: @membro.sobrenome
    fill_in "Telefone", with: @membro.telefone
    click_on "Create Membro"

    assert_text "Membro was successfully created"
    click_on "Back"
  end

  test "should update Membro" do
    visit membro_url(@membro)
    click_on "Edit this membro", match: :first

    fill_in "Bairro", with: @membro.bairro
    fill_in "Cidade", with: @membro.cidade
    fill_in "Data alianca", with: @membro.data_alianca
    fill_in "Data batismo", with: @membro.data_batismo
    fill_in "Data desligamento", with: @membro.data_desligamento
    fill_in "Data nascimento", with: @membro.data_nascimento
    fill_in "Email", with: @membro.email
    fill_in "Endereco", with: @membro.endereco
    fill_in "Nome", with: @membro.nome
    fill_in "Observacoes", with: @membro.observacoes
    fill_in "Situacao", with: @membro.situacao
    fill_in "Sobrenome", with: @membro.sobrenome
    fill_in "Telefone", with: @membro.telefone
    click_on "Update Membro"

    assert_text "Membro was successfully updated"
    click_on "Back"
  end

  test "should destroy Membro" do
    visit membro_url(@membro)
    click_on "Destroy this membro", match: :first

    assert_text "Membro was successfully destroyed"
  end
end
