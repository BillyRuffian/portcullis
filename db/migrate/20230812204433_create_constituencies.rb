class CreateConstituencies < ActiveRecord::Migration[7.0]
  def change
    create_table :constituencies do |t|
      t.integer :constituency_ref
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :geometry
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
    add_index :constituencies, :constituency_ref
  end
end
