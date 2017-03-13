class CreateOrganisations < ActiveRecord::Migration[5.0]
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :org_type
      t.text :info
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
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
