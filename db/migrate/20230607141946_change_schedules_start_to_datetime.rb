class ChangeSchedulesStartToDatetime < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :start, :datetime, using: "start::datetime"
  end

  def down
    change_column :schedules, :start, :string
  end
end

