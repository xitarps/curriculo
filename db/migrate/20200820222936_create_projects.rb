class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :image_url
      t.string :repo

      t.timestamps
    end
  end
end
