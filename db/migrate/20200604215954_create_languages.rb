class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :institution
      t.string :language
      t.date :start_date
      t.date :end_date
      t.string :level

      t.timestamps
    end
  end
end
