require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user=users(:michael)
    @micropost=@user.microposts.build(content:"leorum ipsum 1")
  end




  test "micropost should be valid" do
    assert @micropost.valid?
  end


  test "user id should be presence" do
    @micropost.user_id=nil
    assert_not @micropost.valid?
  end




  test "content should be presence" do
    @micropost.content="  "
    assert_not @micropost.valid?
  end


  test "content should be at most 140 charactters" do
    @micropost.content="a"*141
    assert_not @micropost.valid?
  end


  test "order should be mos recent post" do
    assert_equal microposts(:most_recent), Micropost.first
  end

end