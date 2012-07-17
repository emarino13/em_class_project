class CreateLunchTrucks < ActiveRecord::Migration
  def change
    create_table :lunch_trucks do |t|
      t.string(:full_name, :null=> false)
      t.string(:website, :null => false)
      t.string(:twitter_handle, :null => false)
      t.text(:location, :null => false)
      t.timestamps
    end
  end
end
