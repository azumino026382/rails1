class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :start
      t.string :end
      t.string :all

      t.timestamps
    end
  end
end
