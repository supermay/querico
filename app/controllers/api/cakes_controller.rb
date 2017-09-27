class Api::CakesController < ApplicationController
  def index
    render status: 200, json: Cake.all
  end
end
