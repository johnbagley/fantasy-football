class RemoveColumnsfromStatistics < ActiveRecord::Migration
  def change
    remove_column :statistics, :rushing, :integer
    remove_column :statistics, :receving, :integer
    remove_column :statistics, :passing, :integer
  end
end
