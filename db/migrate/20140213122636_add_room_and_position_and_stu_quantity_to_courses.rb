class AddRoomAndPositionAndStuQuantityToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :room, :string
    add_column :courses, :position, :string
    add_column :courses, :stu_quantity, :integer
  end
end
