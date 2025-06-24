class Dossier < ApplicationRecord
  belongs_to :user
  validates :clotureDossier, inclusion: { in: [true, false] }
end
