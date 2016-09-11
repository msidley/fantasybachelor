class UserLeaguesController < ApplicationController
  def index
    @user_leagues = UserLeague.all
  end

  def show
    @user_league = UserLeague.find(params[:id])
  end

  def new
    @user_league = UserLeague.new
  end

  def create
    @user_league = UserLeague.new
    @user_league.user_id = params[:user_id]
    @user_league.league_id = params[:league_id]
    @user_league.commissioner = params[:commissioner]
    @user_league.selected_contestants = params[:selected_contestants]
    @user_league.point_total = params[:point_total]
    @user_league.points_last_week = params[:points_last_week]
    @user_league.league_locked = params[:league_locked]
    @user_league.extra1 = params[:extra1]
    @user_league.extra2 = params[:extra2]

    if @user_league.save
      redirect_to "/user_leagues", :notice => "User league created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_league = UserLeague.find(params[:id])
  end

  def update
    @user_league = UserLeague.find(params[:id])

    @user_league.user_id = params[:user_id]
    @user_league.league_id = params[:league_id]
    @user_league.commissioner = params[:commissioner]
    @user_league.selected_contestants = params[:selected_contestants]
    @user_league.point_total = params[:point_total]
    @user_league.points_last_week = params[:points_last_week]
    @user_league.league_locked = params[:league_locked]
    @user_league.extra1 = params[:extra1]
    @user_league.extra2 = params[:extra2]

    if @user_league.save
      redirect_to "/user_leagues", :notice => "User league updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_league = UserLeague.find(params[:id])

    @user_league.destroy

    redirect_to "/user_leagues", :notice => "User league deleted."
  end
end
