class CreateCommonsDivisions < ActiveRecord::Migration[7.0]
  def change
    create_table :commons_divisions do |t|
      t.integer :division_ref
      t.date :division_date
      t.date :publication_updated_at
      t.string :number
      t.boolean :deferred
      t.string :evel_type
      t.string :evel_country
      t.string :title
      t.integer :aye_count
      t.integer :no_count
      t.integer :double_majority_aye_count
      t.integer :double_majority_no_count

      t.timestamps
    end
    add_index :commons_divisions, :division_ref
    add_index :commons_divisions, :division_date
    add_index :commons_divisions, :number
  end
end
