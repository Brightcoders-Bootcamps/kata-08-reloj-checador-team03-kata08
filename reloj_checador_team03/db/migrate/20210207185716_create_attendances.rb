class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.date :date_attendance
      t.time :checkin_morning
      t.time :checkout_morning
      t.time :checkin_afternoon
      t.time :checkout_afternoon

      t.timestamps
    end
  end
end
