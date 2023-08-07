class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.integer :member_id
      t.integer :house
      t.string :list_as
      t.string :display_as
      t.string :full_title
      t.string :address_as
      t.string :gender
      t.date :start_date
      t.date :end_date
      t.string :end_reason
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
    add_index :members, :member_id, unique: true
  end
end
