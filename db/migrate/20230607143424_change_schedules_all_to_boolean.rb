class ChangeSchedulesAllToBoolean < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :all, :boolean, using: "all::boolean"
  end

  def down
    change_column :schedules, :all, :string
  end
end

