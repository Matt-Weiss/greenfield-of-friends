class Friendship < ActiveRecord::Base
  validates :initiator_github_id,
            :recipient_github_id,
                presence: true,
                numericality: {
                  only_integer: true
                }
end
