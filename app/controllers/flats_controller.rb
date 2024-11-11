require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]
  def index
  end

  def show
    # Trouver l'appartement dans @flats via l'id passé dans l'url
    # params => { id:}
    @flat = @flats.find do |flat|
      flat["id"] == params[:id].to_i
    end
  end


  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.parse(url).read)
  end
end
