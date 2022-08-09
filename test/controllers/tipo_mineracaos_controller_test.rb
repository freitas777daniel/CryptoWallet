require 'test_helper'

class TipoMineracaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_mineracao = tipo_mineracaos(:one)
  end

  test "should get index" do
    get tipo_mineracaos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_mineracao_url
    assert_response :success
  end

  test "should create tipo_mineracao" do
    assert_difference('TipoMineracao.count') do
      post tipo_mineracaos_url, params: { tipo_mineracao: { acron: @tipo_mineracao.acron, descricao: @tipo_mineracao.descricao } }
    end

    assert_redirected_to tipo_mineracao_url(TipoMineracao.last)
  end

  test "should show tipo_mineracao" do
    get tipo_mineracao_url(@tipo_mineracao)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_mineracao_url(@tipo_mineracao)
    assert_response :success
  end

  test "should update tipo_mineracao" do
    patch tipo_mineracao_url(@tipo_mineracao), params: { tipo_mineracao: { acron: @tipo_mineracao.acron, descricao: @tipo_mineracao.descricao } }
    assert_redirected_to tipo_mineracao_url(@tipo_mineracao)
  end

  test "should destroy tipo_mineracao" do
    assert_difference('TipoMineracao.count', -1) do
      delete tipo_mineracao_url(@tipo_mineracao)
    end

    assert_redirected_to tipo_mineracaos_url
  end
end
