json.extract! career_info, :id, :company, :work_function, :start_date, :end_date, :description, :created_at, :updated_at
json.url career_info_url(career_info, format: :json)
