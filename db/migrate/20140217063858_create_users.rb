class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :grade
      t.string :type
      t.hstore :info
      t.string :name
      t.string :password
      t.string :salt
      t.string :email
      t.integer :school_id,       nill: false,  :primary_key => true

      t.timestamps
    end
  end
end
