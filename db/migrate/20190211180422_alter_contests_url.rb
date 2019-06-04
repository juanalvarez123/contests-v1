class AlterContestsUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :contests, :url, :string
    add_column :contests, :url_id, :string
  end
end
