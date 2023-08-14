class AddSummaryToConstituency < ActiveRecord::Migration[7.0]
  def change
    add_column :constituencies, :summary, :text
  end
end
