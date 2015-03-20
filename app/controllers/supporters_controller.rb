class SupportersController < ApplicationController
  def index
    @supporter = Supporter.new
  end

  def create
    @supporter = Supporter.new(supporter_params)
    if @supporter.save
      redirect_to root_path, notice: "Thank you for your support! Rob appreciates it!"
    else
      render :index
    end
  end

  private

  def supporter_params
    params.require(:supporter).permit(:name, :location)
  end
end
