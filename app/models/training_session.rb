class TrainingSession < ApplicationRecord
  has_many :training_session_activities
  has_many :activities, through: :training_session_activities
end
