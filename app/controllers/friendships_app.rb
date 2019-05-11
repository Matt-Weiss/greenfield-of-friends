class FriendshipsApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/api/v1/friendships/:id' do
    friendships = Friendship.where(initiator_github_id: params[:id])
    json FriendshipSerializer.new(friendships)
  end

  post '/api/v1/friendships' do
    friendship = Friendship.new(initiator_github_id: params[:initiator], recipient_github_id: params[:recipient])
    if friendship.save
      json FriendshipSerializer.new(friendship)
    else
      halt 403, json({"errors" => {
                        "type" => "error",
                        "title" => "Unable to create friendship."
                      }})
    end
  end

end
