class Vote < ApplicationRecord
  belongs_to :topic, counter_cache: true
  validates_uniqueness_of :user_id, scope: :topic_id
end
