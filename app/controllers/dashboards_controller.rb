class DashboardsController < ApplicationController
  def show
    @current_user = current_user
    @team = @current_user.team
    @players = @team.players
    @player_search = 'nil'
  end
end
