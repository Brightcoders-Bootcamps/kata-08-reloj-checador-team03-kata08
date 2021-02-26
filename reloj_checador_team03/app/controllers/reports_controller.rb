class ReportsController < ApplicationController

    def attendance_by_day
        @attendances = Attendance.attendance_by_day()
    end

    def average_time_employees
    end

    def absence_employee
       
    end
end
