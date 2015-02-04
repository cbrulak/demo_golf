class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.references :tee_time, index: true
      
      t.timestamps
    end
  end
end
