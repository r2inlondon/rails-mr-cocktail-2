class DosesController < ApplicationController
  # def new
  #   @dose = Dose.new
  # end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save!
      redirect_to cocktail_path(@cocktail)
    else
      @dose = Dose.new
      render 'cocktails/show'
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find_cocktail

  end
end
