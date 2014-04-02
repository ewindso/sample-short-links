class AddFieldsToLink < ActiveRecord::Migration
  def change
    add_column :links, :full_url, :string
    add_column :links, :code, :string
    add_column :links, :clicks, :integer
  end
end
