class Api::BackgroundsController < ApplicationController
  def index
    render status: 200, json: {
      backgrounds: Background.all
    }.to_json
  end
end
