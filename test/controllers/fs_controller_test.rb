require 'test_helper'

class FsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f = fs(:one)
  end

  test "should get index" do
    get fs_url
    assert_response :success
  end

  test "should get new" do
    get new_f_url
    assert_response :success
  end

  test "should create f" do
    assert_difference('F.count') do
      post fs_url, params: { f: { Name: @f.Name } }
    end

    assert_redirected_to f_url(F.last)
  end

  test "should show f" do
    get f_url(@f)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_url(@f)
    assert_response :success
  end

  test "should update f" do
    patch f_url(@f), params: { f: { Name: @f.Name } }
    assert_redirected_to f_url(@f)
  end

  test "should destroy f" do
    assert_difference('F.count', -1) do
      delete f_url(@f)
    end

    assert_redirected_to fs_url
  end
end
