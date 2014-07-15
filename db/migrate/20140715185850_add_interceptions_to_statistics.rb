class AddInterceptionsToStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :interceptions, :integer
  end
end
