class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.belongs_to :player, index: true
      t.integer :rushing
      t.integer :receving
      t.integer :passing

      t.timestamps
    end
  end
end
