class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.belongs_to :organisation, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.text :bio

      t.timestamps
    end
  end
end
