class UserLeague < ActiveRecord::Base

has_many :comments, :dependent => :destroy

has_many :fantasy_contestants, :dependent => :destroy

has_many :picked_contestants, :through => :fantasy_contestants, :source => :cast

belongs_to :user

belongs_to :league

validates :user_id, :presence => true, :uniqueness => { :scope => :league_id }
validates :league_id, :presence => true
validates :point_total, :presence => true
validates :points_last_week, :presence => true


end
