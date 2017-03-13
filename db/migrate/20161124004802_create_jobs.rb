class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :job_type
      t.string :salary
      t.text :description
      t.string :experience
      t.string :age
      t.string :contact
      t.string :email
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :state
      t.references :organisation, foreign_key: true

      t.timestamps
    end
  end
end
