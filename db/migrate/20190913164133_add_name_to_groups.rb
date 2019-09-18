class AddNameToGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :name, :string
    add_column :groups, :contact_id, :integer

  end
end
