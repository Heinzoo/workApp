class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :images, as: :imageable
  has_many :postulations, dependent: :destroy
  accepts_nested_attributes_for :images
  enum :role, [:normal_user, :admin]
end
