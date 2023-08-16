class ChangeSchedulesAllString < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :all, :string
  end

  def down
    change_column :schedules, :all, :boolean
  end

  
end
