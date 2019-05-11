require 'minitest'
require './app/models/friendship.rb'

class FriendshipTest < Minitest::Test

  def test_we_can_create_friendship
    f_1 = Friendship.create!(initiator_github_id: 111111,recipient_github_id: 222222)

    assert_equal Friendship.first.initiator_github_id, 111111
  end
end
