class Activity < ApplicationRecord
  belongs_to :activity_type, primary_key: :tag
end
