require 'test_helper'

class TripUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_update = trip_updates(:one)
  end

  test "should get index" do
    get trip_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_update_url
    assert_response :success
  end

  test "should create trip_update" do
    assert_difference('TripUpdate.count') do
      post trip_updates_url, params: { trip_update: { country: @trip_update.country, district: @trip_update.district, eta_border: @trip_update.eta_border, eta_site: @trip_update.eta_site, latitude: @trip_update.latitude, location_details: @trip_update.location_details, longitude: @trip_update.longitude, province: @trip_update.province, trip_id: @trip_update.trip_id, updated_by_user_id: @trip_update.updated_by_user_id } }
    end

    assert_redirected_to trip_update_url(TripUpdate.last)
  end

  test "should show trip_update" do
    get trip_update_url(@trip_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_update_url(@trip_update)
    assert_response :success
  end

  test "should update trip_update" do
    patch trip_update_url(@trip_update), params: { trip_update: { country: @trip_update.country, district: @trip_update.district, eta_border: @trip_update.eta_border, eta_site: @trip_update.eta_site, latitude: @trip_update.latitude, location_details: @trip_update.location_details, longitude: @trip_update.longitude, province: @trip_update.province, trip_id: @trip_update.trip_id, updated_by_user_id: @trip_update.updated_by_user_id } }
    assert_redirected_to trip_update_url(@trip_update)
  end

  test "should destroy trip_update" do
    assert_difference('TripUpdate.count', -1) do
      delete trip_update_url(@trip_update)
    end

    assert_redirected_to trip_updates_url
  end
end
