json.array!(@artistuploads) do |artistupload|
  json.extract! artistupload, :id, :title, :inspiration, :description
  json.url artistupload_url(artistupload, format: :json)
end
