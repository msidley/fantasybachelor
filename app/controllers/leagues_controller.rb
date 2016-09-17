class LeaguesController < ApplicationController
  def index
    @leagues = League.all
  end

  def show
    @league = League.find(params[:id])
  end

  def new
    @league = League.new
  end

  def create
    @league = League.new
    @league.league_name = params[:league_name]
    @league.password = params[:password]
    @league.motto = params[:motto]
    @league.league_locked_date = params[:league_locked_date]
    @userid = params[:user_id]
    if @league.save
      redirect_to "/user_leagues/newleague/#{@league.id}/#{@userid}"
    else
      render 'new'
    end
  end

  def find
    @league = League.new
    @league.extra2 = "no error"
  end

  def join
    @league = League.find_by(:league_name => params[:league_name])
    @userid = params[:user_id]
    if @league.password == params[:password]
      redirect_to "/user_leagues/joinleague/#{@league.id}/#{@userid}"
    else
      @league.extra2 = "Could not find league or password does not match"
      render 'find'
    end
  end

  def edit
    @league = League.find(params[:id])
  end

  def update
    @league = League.find(params[:id])

    @league.league_name = params[:league_name]
    @league.password = params[:password]
    @league.motto = params[:motto]
    @league.league_locked_date = params[:league_locked_date]
    @league.extra1 = params[:extra1]
    @league.extra2 = params[:extra2]

    if @league.save
      redirect_to "/leagues", :notice => "League updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @league = League.find(params[:id])

    @league.destroy

    redirect_to "/leagues", :notice => "League deleted."
  end
end
