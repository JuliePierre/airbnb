require 'open-uri'

class FlatsController < ApplicationController
  def index
    @flats = build_flats
  end

  def show
    @flats = build_flats
    @flat = @flats[params["id"].to_i]
  end

  private

  def build_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    JSON.parse(open(url).read)
  end
end


