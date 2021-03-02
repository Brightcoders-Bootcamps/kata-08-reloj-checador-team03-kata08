class ReportsController < ApplicationController

    def attendance_by_day
        @attendances = Attendance.attendance_by_day(params[:first_date])
    end

    def average_time_employees
    end

    def absence_employee
        @absences = Attendance.absence_employee(params[:first_date])
        @attendances = Attendance.attendance_by_day(params[:first_date])
    end
end
