class AlterContestsDates < ActiveRecord::Migration[5.2]
  def change
    change_column :contests, :date_init, :datetime
    change_column :contests, :date_end, :datetime
  end
end
