class CreateElectionResults < ActiveRecord::Migration[7.0]
  def change
    create_table :election_results do |t|
      t.integer :election_ref
      t.references :constituency, null: false, foreign_key: true
      t.date :election_date
      t.boolean :general_election
      t.string :title
      t.boolean :notional
      t.string :result
      t.integer :turnout
      t.integer :electorate
      t.integer :majority
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
    add_index :election_results, :election_ref
  end
end
