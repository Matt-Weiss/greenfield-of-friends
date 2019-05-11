class Friendship < ActiveRecord::Base
  validates_presence_of :initiator_github_id,
                        :recipient_github_id
end
