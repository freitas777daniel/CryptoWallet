require "application_system_test_case"

class TipoMineracaosTest < ApplicationSystemTestCase
  setup do
    @tipo_mineracao = tipo_mineracaos(:one)
  end

  test "visiting the index" do
    visit tipo_mineracaos_url
    assert_selector "h1", text: "Tipo Mineracaos"
  end

  test "creating a Tipo mineracao" do
    visit tipo_mineracaos_url
    click_on "New Tipo Mineracao"

    fill_in "Acron", with: @tipo_mineracao.acron
    fill_in "Descricao", with: @tipo_mineracao.descricao
    click_on "Create Tipo mineracao"

    assert_text "Tipo mineracao was successfully created"
    click_on "Back"
  end

  test "updating a Tipo mineracao" do
    visit tipo_mineracaos_url
    click_on "Edit", match: :first

    fill_in "Acron", with: @tipo_mineracao.acron
    fill_in "Descricao", with: @tipo_mineracao.descricao
    click_on "Update Tipo mineracao"

    assert_text "Tipo mineracao was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo mineracao" do
    visit tipo_mineracaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo mineracao was successfully destroyed"
  end
end
