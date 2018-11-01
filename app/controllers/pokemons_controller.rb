class PokemonsController < ApplicationController

  def capture
    #Grab the id of the Pokemon from the parameters and set that Pokemon's trainer
    #to be the current trainer logged in.
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save

    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @health = @pokemon.health
    @pokemon.health = @health - 10

    if @pokemon.health > 0
      @pokemon.save
    else
      @pokemon.destroy
    end

    redirect_to trainers_path
  end

  def new
    @pokemon = Pokemon.new
    #displays form
  end

  def create
    @pokemon = Pokemon.new({
      :name => params[:pokemon][:name],
      :ndex => params[:pokemon][:ndex],
      :health => 100,
      :level => 1})

    @pokemon.trainer_id = current_trainer.id

    if @pokemon.valid?
      @pokemon.save
      redirect_to trainers_path
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to new_path
    end
  end

  private
    def name_params
      params.require(:name).permit(:name, :ndex)
    end
    
end
