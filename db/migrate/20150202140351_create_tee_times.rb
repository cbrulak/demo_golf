class CreateTeeTimes < ActiveRecord::Migration
  def change
    create_table :tee_times do |t|
      t.datetime :start
      t.datetime :end
      t.integer :length

      t.timestamps
    end
  end
end
