class CreateCommonsVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :commons_votes do |t|
      t.references :commons_division, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.integer :vote

      t.timestamps
    end
  end
end
