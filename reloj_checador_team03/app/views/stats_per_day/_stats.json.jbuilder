json.extract! attendance, :id, :date_attendance, :checkin_morning, :checkout_morning, :checkin_afternoon, :checkout_afternoon, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
