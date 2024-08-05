require 'open-uri'
require 'json'

class FlatsController < ApplicationController
  # Refacto :
  # Callback => Exécute la méthode set_flats avant l'exécution de l'action
  before_action :set_flats, only: %w[index show]

  def index; end

  def show
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end

  private

  def set_flats
    # Récupérer les appartements depuis l'API (le lien du livecode)
    # et les stocker dans une variable d'instance
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats = JSON.parse(URI.open(url).read)
  end
end
