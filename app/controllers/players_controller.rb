class PlayersController < ApplicationController
  def create
    team = current_user.teams.find(params[:team_id])
    players = Player.create(player_params)
    redirect_to team
  end

  private

  def player_params
    params.require(:player).permit(:name).merge(user_id: current_user.id, team_id: params[:team_id])
  end
end
