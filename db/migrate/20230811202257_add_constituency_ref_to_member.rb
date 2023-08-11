class AddConstituencyRefToMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :constituency_ref, :integer
    add_index :members, :constituency_ref
  end
end
