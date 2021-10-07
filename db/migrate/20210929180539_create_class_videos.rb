class CreateClassVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :name
      t.text :description
      t.string :category
      t.float :rating

      t.timestamps
    end
    
    create_table :class_videos do |t|
      t.belongs_to :course
      t.integer :class_id
      t.string :name
      t.text :description
      t.integer :course_id

      t.timestamps
    end
  end
end
