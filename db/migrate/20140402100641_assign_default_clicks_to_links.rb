class AssignDefaultClicksToLinks < ActiveRecord::Migration
  def change
    change_column :links, :clicks, :integer, default: 0
  end
end
