require 'test_helper'

class ProcessControllerTest < ActionDispatch::IntegrationTest
  test "should get print" do
    get process_print_url
    assert_response :success
  end

  test "should get drylaminate" do
    get process_drylaminate_url
    assert_response :success
  end

  test "should get exlaminate" do
    get process_exlaminate_url
    assert_response :success
  end

  test "should get slit" do
    get process_slit_url
    assert_response :success
  end

  test "should get bagmake" do
    get process_bagmake_url
    assert_response :success
  end

end
