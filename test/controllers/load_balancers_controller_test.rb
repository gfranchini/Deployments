require 'test_helper'

class LoadBalancersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @load_balancer = load_balancers(:one)
  end

  test "should get index" do
    get load_balancers_url
    assert_response :success
  end

  test "should get new" do
    get new_load_balancer_url
    assert_response :success
  end

  test "should create load_balancer" do
    assert_difference('LoadBalancer.count') do
      post load_balancers_url, params: { load_balancer: { form_id: @load_balancer.form_id, ip_addres: @load_balancer.ip_addres, server_type: @load_balancer.server_type, type: @load_balancer.type } }
    end

    assert_redirected_to load_balancer_url(LoadBalancer.last)
  end

  test "should show load_balancer" do
    get load_balancer_url(@load_balancer)
    assert_response :success
  end

  test "should get edit" do
    get edit_load_balancer_url(@load_balancer)
    assert_response :success
  end

  test "should update load_balancer" do
    patch load_balancer_url(@load_balancer), params: { load_balancer: { form_id: @load_balancer.form_id, ip_addres: @load_balancer.ip_addres, server_type: @load_balancer.server_type, type: @load_balancer.type } }
    assert_redirected_to load_balancer_url(@load_balancer)
  end

  test "should destroy load_balancer" do
    assert_difference('LoadBalancer.count', -1) do
      delete load_balancer_url(@load_balancer)
    end

    assert_redirected_to load_balancers_url
  end
end
