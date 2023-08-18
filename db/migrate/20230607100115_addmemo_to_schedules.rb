class AddmemoToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :memo, :string
  end
end

