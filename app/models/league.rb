class League < ActiveRecord::Base

has_many :user_leagues, :dependent => :destroy

validates :league_name, :presence => true, :uniqueness => { :scope => :password }
validates :password, :presence => true
validates :motto, :presence => true


end
