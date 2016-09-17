class UserLeague < ActiveRecord::Base

has_many :comments, :dependent => :destroy

has_many :picked_contestants, :through => :fantasy_contestants, :source => :cast

end
