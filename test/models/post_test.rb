require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "post attributes must not be empty" do
 	  post = Post.new
	  assert post.errors[:caption].any?
  end
end
