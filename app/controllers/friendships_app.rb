class FriendshipsApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/api/v1/friendships/:id' do
    json FriendshipSerializer.new(Friendship.where(initiator_github_id: params[:id]))
  end

end
