class AddSubjectAndLikesToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :subject, :string
    add_column :courses, :likes, :integer, default: 0
  end
end
