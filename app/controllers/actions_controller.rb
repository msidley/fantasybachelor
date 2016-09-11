class ActionsController < ApplicationController
  def index
    @actions = Action.all
  end

  def show
    @action = Action.find(params[:id])
  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.new
    @action.play = params[:play]
    @action.point_value = params[:point_value]
    @action.extra1 = params[:extra1]
    @action.extra2 = params[:extra2]

    if @action.save
      redirect_to "/actions", :notice => "Action created successfully."
    else
      render 'new'
    end
  end

  def edit
    @action = Action.find(params[:id])
  end

  def update
    @action = Action.find(params[:id])

    @action.play = params[:play]
    @action.point_value = params[:point_value]
    @action.extra1 = params[:extra1]
    @action.extra2 = params[:extra2]

    if @action.save
      redirect_to "/actions", :notice => "Action updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @action = Action.find(params[:id])

    @action.destroy

    redirect_to "/actions", :notice => "Action deleted."
  end
end
