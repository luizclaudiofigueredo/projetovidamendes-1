require "application_system_test_case"

class TipoEventosTest < ApplicationSystemTestCase
  setup do
    @tipo_evento = tipo_eventos(:one)
  end

  test "visiting the index" do
    visit tipo_eventos_url
    assert_selector "h1", text: "Tipo eventos"
  end

  test "should create tipo evento" do
    visit tipo_eventos_url
    click_on "New tipo evento"

    fill_in "Descricao", with: @tipo_evento.descricao
    click_on "Create Tipo evento"

    assert_text "Tipo evento was successfully created"
    click_on "Back"
  end

  test "should update Tipo evento" do
    visit tipo_evento_url(@tipo_evento)
    click_on "Edit this tipo evento", match: :first

    fill_in "Descricao", with: @tipo_evento.descricao
    click_on "Update Tipo evento"

    assert_text "Tipo evento was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo evento" do
    visit tipo_evento_url(@tipo_evento)
    click_on "Destroy this tipo evento", match: :first

    assert_text "Tipo evento was successfully destroyed"
  end
end
