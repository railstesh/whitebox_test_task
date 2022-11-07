json.extract! ticket, :id, :title, :description, :priority, :start_date, :end_date, :status, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
