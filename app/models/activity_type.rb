class ActivityType < ApplicationRecord
  has_many :activities, primary_key: :tag

  validates :name, presence: true
  validates :tag, presence: true, uniqueness: true
end
