class Work < ApplicationRecord
  belongs_to :user
  has_many :postulations, dependent: :destroy
end
