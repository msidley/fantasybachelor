class ScoringsController < ApplicationController
  def index
    @scorings = Scoring.all
  end

  def show
    @scoring = Scoring.find(params[:id])
  end

  def new
    @scoring = Scoring.new
  end

  def create
    @scoring = Scoring.new
    @scoring.cast_id = params[:cast_id]
    @scoring.actions_id = params[:actions_id]
    @scoring.week = params[:week]
    @scoring.extra1 = params[:extra1]
    @scoring.extra2 = params[:extra2]

    if @scoring.save
      redirect_to "/scorings", :notice => "Scoring created successfully."
    else
      render 'new'
    end
  end

  def edit
    @scoring = Scoring.find(params[:id])
  end

  def update
    @scoring = Scoring.find(params[:id])

    @scoring.cast_id = params[:cast_id]
    @scoring.actions_id = params[:actions_id]
    @scoring.week = params[:week]
    @scoring.extra1 = params[:extra1]
    @scoring.extra2 = params[:extra2]

    if @scoring.save
      redirect_to "/scorings", :notice => "Scoring updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @scoring = Scoring.find(params[:id])

    @scoring.destroy

    redirect_to "/scorings", :notice => "Scoring deleted."
  end
end
