json.extract! card, :id, :address, :name, :last_login, :login_count, :status, :created_at, :updated_at
json.url card_url(card, format: :json)
