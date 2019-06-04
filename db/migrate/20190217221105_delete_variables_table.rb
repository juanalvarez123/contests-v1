class DeleteVariablesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :variables
  end
end
