require 'active_support/core_ext' 
class Attendance < ApplicationRecord
  belongs_to :employee


  def self.attendance_by_day(date = Date.today)
    date = Date.today if date.nil?
    date = Date.parse date if date.is_a? String
    Attendance.where(created_at: date.all_day).all
  end

  def self.absence_employee(date)
    date = get_date(date)
    b_day = get_b_day(date)
    sql = <<-SQL
    select e.name, e.last_name, (#{b_day} - count(distinct a.employee_id)) as absence from employees e
    left join attendances a on a.employee_id = e.id and Extract(month from a.created_at) = #{date.month}
    group by e.id
    SQL
    results = ActiveRecord::Base.connection.execute(sql)
  end

  private 
  def self.get_date(date)
    date = Date.parse date unless date.nil?
    date = Date.new if date.nil?
    return date
  end

  def self.get_b_day(date)
    d1 = Date.new( date.year, date.month, 1)
    d2 = Date.new( date.year, date.month, -1)
    wdays = [0,6]
    weekdays = (d1..d2).reject { |d| wdays.include? d.wday}
    weekdays.length
  end

end
