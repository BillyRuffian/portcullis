class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.references :election_result, null: false, foreign_key: true
      t.string :name
      t.references :party, null: false, foreign_key: true
      t.decimal :change
      t.integer :order
      t.integer :votes
      t.decimal :share

      t.timestamps
    end
  end
end
