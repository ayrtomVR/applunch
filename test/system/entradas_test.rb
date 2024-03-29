require "application_system_test_case"

class EntradasTest < ApplicationSystemTestCase
  setup do
    @entrada = entradas(:one)
  end

  test "visiting the index" do
    visit entradas_url
    assert_selector "h1", text: "Entradas"
  end

  test "creating a Entrada" do
    visit entradas_url
    click_on "New Entrada"

    fill_in "Descripcion", with: @entrada.descripcion
    fill_in "Estado", with: @entrada.estado
    fill_in "Imagen", with: @entrada.imagen
    fill_in "Nombre", with: @entrada.nombre
    click_on "Create Entrada"

    assert_text "Entrada was successfully created"
    click_on "Back"
  end

  test "updating a Entrada" do
    visit entradas_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @entrada.descripcion
    fill_in "Estado", with: @entrada.estado
    fill_in "Imagen", with: @entrada.imagen
    fill_in "Nombre", with: @entrada.nombre
    click_on "Update Entrada"

    assert_text "Entrada was successfully updated"
    click_on "Back"
  end

  test "destroying a Entrada" do
    visit entradas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entrada was successfully destroyed"
  end
end
