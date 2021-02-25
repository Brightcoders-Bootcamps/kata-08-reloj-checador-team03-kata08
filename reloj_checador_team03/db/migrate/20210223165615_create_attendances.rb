class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.date :date_attendance
      t.time :time_attendance
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
