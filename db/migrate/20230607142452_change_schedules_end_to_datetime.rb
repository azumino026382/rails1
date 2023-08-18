class ChangeSchedulesEndToDatetime < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :end, :datetime, using: "end::datetime"
  end

  def down
    change_column :schedules, :end, :string
  end
  
end

