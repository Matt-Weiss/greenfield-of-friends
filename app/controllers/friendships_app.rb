class FriendshipsApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/api/v1/friendships/:id' do
    json FriendshipSerializer.new(Friendship.where(initiator_github_id: params[:id]))
  end

  post '/api/v1/friendships' do
    Friendship.create(initiator_github_id: params[:initiator], recipient_github_id: params[:recipient])
  end

end
