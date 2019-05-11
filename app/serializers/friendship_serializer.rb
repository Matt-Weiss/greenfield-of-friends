class FriendshipSerializer
  include FastJsonapi::ObjectSerializer

  attribute :initiator do |object|
    object.initiator_github_id
  end

  attribute :recipient do |object|
    object.recipient_github_id
  end
end
