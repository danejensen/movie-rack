class CreateShowtimes < ActiveRecord::Migration
  def self.up
    create_table :showtimes do |t|
      t.datetime :starttime
      t.integer :seatsold

      t.timestamps
    end
  end

  def self.down
    drop_table :showtimes
  end
end
