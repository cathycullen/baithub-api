json.array! @catches do |catch|
  json.(catch, :id, :species, :weight, :length, :created_at)
  json.bait catch.bait.name
  json.bait_image_url image_url(catch.bait.image)
  json.username catch.user.username
end
