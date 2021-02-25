class RemoveDateAndTimeAttendance < ActiveRecord::Migration[6.1]
  def change
    remove_column :attendances, :date_attendance
    remove_column :attendances, :time_attendance
    add_column :attendances, :date_time, :datetime
    add_column :attendances, :type_check, :string
  end
end
