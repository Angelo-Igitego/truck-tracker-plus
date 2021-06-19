require 'test_helper'

class TripContainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_container = trip_containers(:one)
  end

  test "should get index" do
    get trip_containers_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_container_url
    assert_response :success
  end

  test "should create trip_container" do
    assert_difference('TripContainer.count') do
      post trip_containers_url, params: { trip_container: { container_commodity: @trip_container.container_commodity, container_gross_weight: @trip_container.container_gross_weight, container_height: @trip_container.container_height, container_length: @trip_container.container_length, container_net_weight: @trip_container.container_net_weight, container_number: @trip_container.container_number, container_tare: @trip_container.container_tare, container_weight: @trip_container.container_weight, customer_id: @trip_container.customer_id, trip_id: @trip_container.trip_id } }
    end

    assert_redirected_to trip_container_url(TripContainer.last)
  end

  test "should show trip_container" do
    get trip_container_url(@trip_container)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_container_url(@trip_container)
    assert_response :success
  end

  test "should update trip_container" do
    patch trip_container_url(@trip_container), params: { trip_container: { container_commodity: @trip_container.container_commodity, container_gross_weight: @trip_container.container_gross_weight, container_height: @trip_container.container_height, container_length: @trip_container.container_length, container_net_weight: @trip_container.container_net_weight, container_number: @trip_container.container_number, container_tare: @trip_container.container_tare, container_weight: @trip_container.container_weight, customer_id: @trip_container.customer_id, trip_id: @trip_container.trip_id } }
    assert_redirected_to trip_container_url(@trip_container)
  end

  test "should destroy trip_container" do
    assert_difference('TripContainer.count', -1) do
      delete trip_container_url(@trip_container)
    end

    assert_redirected_to trip_containers_url
  end
end
