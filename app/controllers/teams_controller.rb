class TeamsController < ApplicationController
  def new
    @team = Team.new
    @teams = current_user.teams
  end

  def create
    team = Team.create(team_params)
    redirect_to dashboard_path(current_user)
  end

  def show
    @team = current_user.teams.find(params[:id])
    @players = @team.players
    @player = Player.new
  end

  private

  def team_params
    params.require(:team).permit(:name).merge(user_id: current_user.id)
  end
end
