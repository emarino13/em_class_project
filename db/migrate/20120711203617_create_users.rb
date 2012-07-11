class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string(:full_name, :null => false, :length => {:maximum => 50})
      t.string(:password, :null =>false, :confirmation => true)
      t.string(:email, :null => false)

      t.timestamps
    end
  end
end
