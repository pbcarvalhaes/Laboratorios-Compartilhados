require 'test_helper'

class EquipamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laboratorio = create(:laboratorio)

    @equipamento = create(:equipamento, laboratorio_id: @laboratorio.id)
    # @equipamento.laboratorio_id = @laboratorio.id
    # @laboratorio = laboratorios(:lmo)
    # @equipamento = equipamentos(:one)
  end

  test "should get index" do
    get laboratorio_equipamentos_url(@laboratorio)
    assert_response :success
  end

  test "should get new" do
    get new_laboratorio_equipamento_url(@laboratorio)
    assert_response :success
  end

  test "should create equipamento" do
    assert_difference('Equipamento.count') do
      post laboratorio_equipamentos_url(@laboratorio), params: { equipamento: { funcao: @equipamento.funcao, nome: @equipamento.nome, taxa: @equipamento.taxa } }
    end

    assert_redirected_to laboratorio_equipamento_url(@laboratorio, Equipamento.last)
  end

  test "should show equipamento" do
    get laboratorio_equipamento_url(@laboratorio, @equipamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_laboratorio_equipamento_url(@laboratorio, @equipamento)
    assert_response :success
  end

  test "should update equipamento" do
    patch laboratorio_equipamento_url(@laboratorio, @equipamento), params: { equipamento: { funcao: @equipamento.funcao, nome: @equipamento.nome, taxa: @equipamento.taxa } }
    assert_redirected_to laboratorio_equipamentos_url(@laboratorio)
  end

  test "should destroy equipamento" do
    assert_difference('Equipamento.count', -1) do
      delete laboratorio_equipamento_url(@laboratorio, @equipamento)
    end

    assert_redirected_to laboratorio_equipamentos_url
  end
end
