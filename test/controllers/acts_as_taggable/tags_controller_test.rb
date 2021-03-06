require 'test_helper'

module ActsAsTaggable
  class TagsControllerTest < ActionController::TestCase
    setup do
      @tag = acts_as_taggable_tags(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:tags)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create tag" do
      assert_difference('Tag.count') do
        post :create, tag: { name: @tag.name }
      end

      assert_redirected_to tag_path(assigns(:tag))
    end

    test "should show tag" do
      get :show, id: @tag
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @tag
      assert_response :success
    end

    test "should update tag" do
      patch :update, id: @tag, tag: { name: @tag.name }
      assert_redirected_to tag_path(assigns(:tag))
    end

    test "should destroy tag" do
      assert_difference('Tag.count', -1) do
        delete :destroy, id: @tag
      end

      assert_redirected_to tags_path
    end
  end
end
