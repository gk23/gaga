require 'test_helper'

class ZhihusControllerTest < ActionController::TestCase
  setup do
    @zhihu = zhihus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zhihus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zhihu" do
    assert_difference('Zhihu.count') do
      post :create, zhihu: { answer: @zhihu.answer, desc: @zhihu.desc, tags: @zhihu.tags, title: @zhihu.title }
    end

    assert_redirected_to zhihu_path(assigns(:zhihu))
  end

  test "should show zhihu" do
    get :show, id: @zhihu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zhihu
    assert_response :success
  end

  test "should update zhihu" do
    put :update, id: @zhihu, zhihu: { answer: @zhihu.answer, desc: @zhihu.desc, tags: @zhihu.tags, title: @zhihu.title }
    assert_redirected_to zhihu_path(assigns(:zhihu))
  end

  test "should destroy zhihu" do
    assert_difference('Zhihu.count', -1) do
      delete :destroy, id: @zhihu
    end

    assert_redirected_to zhihus_path
  end
end
