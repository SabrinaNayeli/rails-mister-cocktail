class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    Dose.create(params[doses_params])
  end

  def destroy
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end
end
