class AddConstituencyNameToMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :constituency_name, :string
  end
end
