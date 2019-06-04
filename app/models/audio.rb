class Audio < ApplicationRecord
  belongs_to :participant
  belongs_to :contest
end
