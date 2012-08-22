class RpsesController < ApplicationController

  def index
  end

  def show
    game = Rps.new
    @r = game.play(params[:hand_one], params[:hand_two])
  end
end
