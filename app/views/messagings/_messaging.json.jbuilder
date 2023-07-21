json.extract! messaging, :id, :sender, :receiver, :replying_to, :message, :read, :deleted, :created_at, :updated_at
json.url messaging_url(messaging, format: :json)
