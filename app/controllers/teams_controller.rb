class TeamsController < ApplicationController
  def index
    @teams = Team.where(league: params[:league]).order(wins: :desc)
  end
end
