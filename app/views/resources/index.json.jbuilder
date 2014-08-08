json.array!(@resources) do |resource|
  json.extract! resource, :name, :type, :category, :course, :user
  json.url resource_url(resource, format: :json)
end