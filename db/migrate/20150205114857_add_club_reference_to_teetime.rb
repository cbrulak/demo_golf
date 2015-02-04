class AddClubReferenceToTeetime < ActiveRecord::Migration
  def change
    add_reference :tee_times, :club, index: true
  end
end
