class Statistic < ActiveRecord::Base
  belongs_to :player

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Statistic.create! row.to_hash
    end
  end
end
