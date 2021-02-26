class Attendance < ApplicationRecord
  belongs_to :employee


  def self.attendance_by_day(date = Date.today)
    Attendance.where(date_time: date.all_day).all
  end
end
