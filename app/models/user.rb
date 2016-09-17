class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_leagues, :dependent => :destroy

  has_many :joined_leagues, :through => :user_league, :source => :league

  validates :username, :presence => true, :uniqueness => true
end
