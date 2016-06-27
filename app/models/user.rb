class User < ActiveRecord::Base
  # rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable #, :validatable

  ROLES = %w[admin company employee employer].freeze 

  validates :email, uniqueness: false, presence: true
  validates :password, presence: false

  has_and_belongs_to_many :jobs 
end
