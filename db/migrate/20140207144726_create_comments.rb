class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_id
      t.text :content, null: false
      t.references :course, index: true

      t.timestamps
    end
  end
end
