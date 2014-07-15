class StatisticsController < ApplicationController
  require 'csv'
  def import
    Statistic.import(params[:file])
    redirect_to root_path, notice: 'Statistics Imported'
  end
end
