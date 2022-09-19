require "test_helper"

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get motorcyle_reservation" do
    get model_motorcyle_reservation_url
    assert_response :success
  end

  test "should get motorcyle_id:references" do
    get model_motorcyle_id:references_url
    assert_response :success
  end

  test "should get motorcyles" do
    get model_motorcyles_url
    assert_response :success
  end

  test "should get reservation_id:references" do
    get model_reservation_id:references_url
    assert_response :success
  end

  test "should get reservation" do
    get model_reservation_url
    assert_response :success
  end
end
