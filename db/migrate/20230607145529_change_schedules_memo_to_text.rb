class ChangeSchedulesMemoToText < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :memo, :text
  end

  def down
    change_column :schedules, :memo, :string
  end
end

