class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum roles: [:user, :admin]

  has_many :projects , dependent: :destroy
  after_initialize :set_default_role
   def set_default_role
    self.roles ||= :user
   end
end
