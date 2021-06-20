require 'test_helper'

class ContainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @container = containers(:one)
  end

  test "should get index" do
    get containers_url
    assert_response :success
  end

  test "should get new" do
    get new_container_url
    assert_response :success
  end

  test "should create container" do
    assert_difference('Container.count') do
      post containers_url, params: { container: { bill_of_ladding_number: @container.bill_of_ladding_number, commodity: @container.commodity, docs_rcd: @container.docs_rcd, driver_id: @container.driver_id, eta_border: @container.eta_border, eta_dar: @container.eta_dar, eta_site: @container.eta_site, etd_border: @container.etd_border, gross_weight_kgs: @container.gross_weight_kgs, line_id: @container.line_id, loading_at_dar: @container.loading_at_dar, number: @container.number, offloaded: @container.offloaded, offloading_site: @container.offloading_site, port_of_loading: @container.port_of_loading, remark: @container.remark, service: @container.service, shipper: @container.shipper, size: @container.size, truck_number: @container.truck_number, truck_position: @container.truck_position, vessel_berthe_date: @container.vessel_berthe_date, vessel_discharge_date: @container.vessel_discharge_date } }
    end

    assert_redirected_to container_url(Container.last)
  end

  test "should show container" do
    get container_url(@container)
    assert_response :success
  end

  test "should get edit" do
    get edit_container_url(@container)
    assert_response :success
  end

  test "should update container" do
    patch container_url(@container), params: { container: { bill_of_ladding_number: @container.bill_of_ladding_number, commodity: @container.commodity, docs_rcd: @container.docs_rcd, driver_id: @container.driver_id, eta_border: @container.eta_border, eta_dar: @container.eta_dar, eta_site: @container.eta_site, etd_border: @container.etd_border, gross_weight_kgs: @container.gross_weight_kgs, line_id: @container.line_id, loading_at_dar: @container.loading_at_dar, number: @container.number, offloaded: @container.offloaded, offloading_site: @container.offloading_site, port_of_loading: @container.port_of_loading, remark: @container.remark, service: @container.service, shipper: @container.shipper, size: @container.size, truck_number: @container.truck_number, truck_position: @container.truck_position, vessel_berthe_date: @container.vessel_berthe_date, vessel_discharge_date: @container.vessel_discharge_date } }
    assert_redirected_to container_url(@container)
  end

  test "should destroy container" do
    assert_difference('Container.count', -1) do
      delete container_url(@container)
    end

    assert_redirected_to containers_url
  end
end
