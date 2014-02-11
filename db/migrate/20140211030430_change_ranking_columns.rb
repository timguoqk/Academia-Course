class ChangeRankingColumns < ActiveRecord::Migration
  def change
  	remove_column :courses, :grade, :float
  	add_column :courses, :ranking, :integer
  end
end
