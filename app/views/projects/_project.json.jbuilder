json.extract! project, :id, :title, :description, :start_date, :end_date, :status, :created_at, :updated_at
json.url project_url(project, format: :json)
