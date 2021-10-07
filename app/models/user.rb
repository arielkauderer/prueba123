class User < ApplicationRecord
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :first_name, length: { minimum: 1 }
  validates :last_name, length: { minimum: 1 }
  validates :username, length: { minimum: 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
