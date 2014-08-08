json.array!(@identities) do |identity|
  json.extract! identity, :provider, :uid, :user_id, :oauth_token, :oauth_expires_at
  json.url identity_url(identity, format: :json)
end