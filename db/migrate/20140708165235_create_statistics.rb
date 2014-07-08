class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.belongs_to :player, index: true
      t.string :rushing
      t.string :receving
      t.string :passing

      t.timestamps
    end
  end
end
