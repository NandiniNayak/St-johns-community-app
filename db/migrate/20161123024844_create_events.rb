class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.belongs_to :organisation, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :info
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :image
      t.string :street
      t.string :suburb
      t.string :state
      t.string :postcode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
