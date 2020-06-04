class CreatePersonalInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_infos do |t|
      t.string :name
      t.string :nickname
      t.date :birthday
      t.string :gender
      t.string :country
      t.string :state
      t.string :city
      t.string :neighborhood
      t.string :street
      t.string :number
      t.string :zipcode
      t.string :phone_a
      t.string :phone_b
      t.string :email
      t.string :relationship
      t.text :focus
      t.string :greeting
      t.text :text_hook
      t.string :github
      t.string :gitlab
      t.string :linkedin
      t.text :footer_text

      t.timestamps
    end
  end
end
