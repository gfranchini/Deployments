json.extract! load_balancer, :id, :type, :ip_addres, :server_type, :form_id, :created_at, :updated_at
json.url load_balancer_url(load_balancer, format: :json)