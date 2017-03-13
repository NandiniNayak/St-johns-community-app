class AddLogoToOrganisation < ActiveRecord::Migration[5.0]
  def change
    add_column :organisations, :logo, :string
  end
end
