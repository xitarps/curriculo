class AddThumbUrlToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :thumb_url, :string
  end
end
