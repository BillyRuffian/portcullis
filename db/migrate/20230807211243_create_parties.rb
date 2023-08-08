class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.integer :party_ref
      t.string :name
      t.string :abbreviation
      t.string :background_hex
      t.string :foreground_hex
      t.boolean :lords_main_party
      t.boolean :lords_spiritual_party
      t.boolean :independent_party

      t.timestamps
    end
    add_index :parties, :party_ref, unique: true
  end
end
