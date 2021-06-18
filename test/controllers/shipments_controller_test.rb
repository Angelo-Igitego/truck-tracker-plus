require 'test_helper'

class ShipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment = shipments(:one)
  end

  test "should get index" do
    get shipments_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_url
    assert_response :success
  end

  test "should create shipment" do
    assert_difference('Shipment.count') do
      post shipments_url, params: { shipment: { bearthed_at: @shipment.bearthed_at, discharged_at: @shipment.discharged_at, documents_received_at: @shipment.documents_received_at, eta_to_offloading_port: @shipment.eta_to_offloading_port, loading_port_id: @shipment.loading_port_id, number: @shipment.number, offloading_port_id: @shipment.offloading_port_id, remarks: @shipment.remarks, shipper_name: @shipment.shipper_name, shipping_line_id: @shipment.shipping_line_id, vessel_id: @shipment.vessel_id } }
    end

    assert_redirected_to shipment_url(Shipment.last)
  end

  test "should show shipment" do
    get shipment_url(@shipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_url(@shipment)
    assert_response :success
  end

  test "should update shipment" do
    patch shipment_url(@shipment), params: { shipment: { bearthed_at: @shipment.bearthed_at, discharged_at: @shipment.discharged_at, documents_received_at: @shipment.documents_received_at, eta_to_offloading_port: @shipment.eta_to_offloading_port, loading_port_id: @shipment.loading_port_id, number: @shipment.number, offloading_port_id: @shipment.offloading_port_id, remarks: @shipment.remarks, shipper_name: @shipment.shipper_name, shipping_line_id: @shipment.shipping_line_id, vessel_id: @shipment.vessel_id } }
    assert_redirected_to shipment_url(@shipment)
  end

  test "should destroy shipment" do
    assert_difference('Shipment.count', -1) do
      delete shipment_url(@shipment)
    end

    assert_redirected_to shipments_url
  end
end
