class CreateCareerInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :career_infos do |t|
      t.string :company
      t.string :work_function
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
