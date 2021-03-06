class Link < ApplicationRecord
  belongs_to :user, optional: true # Prevent ActiveRecord::RecordInvalid

  has_many :votes

  def votes_count
    votes.count
  end
end
