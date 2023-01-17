class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  # has_secure_password
  has_many :reservations, foreign_key: 'user_id', dependent: :delete_all
  has_many :motorcycles, foreign_key: 'user_id', dependent: :delete_all

  has_one_attached :image
end
