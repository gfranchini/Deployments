json.extract! server, :id, :hostname, :ip, :os, :cpucores, :memory, :disk, :form_id, :created_at, :updated_at
json.url server_url(server, format: :json)