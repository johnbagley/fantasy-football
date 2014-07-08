class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @player = Player.find_by(name: @query)
    @statistics = @player.statistics
  end
end
