class CastsController < ApplicationController
  def index
    @casts = Cast.all
  end

  def show
    @cast = Cast.find(params[:id])
  end

  def new
    @cast = Cast.new
  end

  def create
    @cast = Cast.new
    @cast.name = params[:name]
    @cast.bio = params[:bio]
    @cast.image = params[:image]
    @cast.points = params[:points]
    @cast.extra1 = params[:extra1]
    @cast.extra2 = params[:extra2]

    if @cast.save
      redirect_to "/casts", :notice => "Cast created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cast = Cast.find(params[:id])
  end

  def update
    @cast = Cast.find(params[:id])

    @cast.name = params[:name]
    @cast.bio = params[:bio]
    @cast.image = params[:image]
    @cast.points = params[:points]
    @cast.extra1 = params[:extra1]
    @cast.extra2 = params[:extra2]

    if @cast.save
      redirect_to "/casts", :notice => "Cast updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @cast = Cast.find(params[:id])

    @cast.destroy

    redirect_to "/casts", :notice => "Cast deleted."
  end
end
