require './app.rb'

f_1 = Friendship.create!(initiator_github_id: 111111,recipient_github_id: 222222)
f_2 = Friendship.create!(initiator_github_id: 111111,recipient_github_id: 333333)
f_3 = Friendship.create!(initiator_github_id: 222222,recipient_github_id: 333333)
