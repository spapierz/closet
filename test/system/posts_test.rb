require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
<<<<<<< HEAD
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Caption", with: @post.caption
    fill_in "Image Url", with: @post.image_url
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Caption", with: @post.caption
    fill_in "Image Url", with: @post.image_url
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
=======
    assert_selector "h1", text: "posts"
  end

  test "creating a post" do
    visit posts_url
    click_on "New post"

    fill_in " Title", with: @post. title
    fill_in "Description", with: @post.description
    fill_in "Image Url", with: @post.image_url
    fill_in "Price", with: @post.price
    click_on "Create post"

    assert_text "post was successfully created"
    click_on "Back"
  end

  test "updating a post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in " Title", with: @post. title
    fill_in "Description", with: @post.description
    fill_in "Image Url", with: @post.image_url
    fill_in "Price", with: @post.price
    click_on "Update post"

    assert_text "post was successfully updated"
    click_on "Back"
  end

  test "destroying a post" do
>>>>>>> 539da29e6909f39c7eaced37915b962908687be6
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

<<<<<<< HEAD
    assert_text "Post was successfully destroyed"
=======
    assert_text "post was successfully destroyed"
>>>>>>> 539da29e6909f39c7eaced37915b962908687be6
  end
end
