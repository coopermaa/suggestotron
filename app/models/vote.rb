class Vote < ApplicationRecord
  belongs_to :topic
  validates_uniqueness_of :user_id, scope: :topic_id
end
