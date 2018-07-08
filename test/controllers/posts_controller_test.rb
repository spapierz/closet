require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('post.count') do
      post posts_url, params: { post: {  title: @post. title, description: @post.description, image_url: @post.image_url, price: @post.price } }
    end

    assert_redirected_to post_url(post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: {  title: @post. title, description: @post.description, image_url: @post.image_url, price: @post.price } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
