class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :school
      t.string :name
      t.text :description
      t.date :done_when
      t.string :certificate

      t.timestamps
    end
  end
end
