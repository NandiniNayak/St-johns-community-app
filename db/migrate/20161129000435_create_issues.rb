class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :suburb
      t.string :city
      t.string :state
      t.string :postcode
      t.string :contact
      t.integer :priority
      t.boolean :solved

      t.timestamps
    end
  end
end
