class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :teacher
      t.string :photo
      t.string :title
      t.float :gpa
      t.float :grade
      t.text :intro_text
      t.text :gp_text
      t.text :difficulty_text
      t.text :features_text

      t.timestamps
    end
  end
end
