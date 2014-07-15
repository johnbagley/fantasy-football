class AlterColumnsinStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :rank, :integer
    add_column :statistics, :name, :string
    add_column :statistics, :completions, :integer, default: 0
    add_column :statistics, :passing_yards, :integer, default: 0
    add_column :statistics, :passing_tds, :integer, default: 0
    add_column :statistics, :rushes, :integer, default: 0
    add_column :statistics, :rushing_yards, :integer, default: 0
    add_column :statistics, :rushing_tds, :integer, default: 0
    add_column :statistics, :receptions, :integer, default: 0
    add_column :statistics, :receiving_yards, :integer, default: 0
    add_column :statistics, :receiving_tds, :integer, default: 0
    add_column :statistics, :points, :integer, default: 0
  end
end
