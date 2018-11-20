json.extract! post, :id, :title, :town, :region, :population, :supported_sector, :description, :when, :Donar, :funded, :beneficiaries, :status, :latitude, :longitude, :created_at, :updated_at
json.url post_url(post, format: :json)
