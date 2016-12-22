json.extract! deployment, :id, :repo, :stack, :software, :installation, :form_id, :created_at, :updated_at
json.url deployment_url(deployment, format: :json)