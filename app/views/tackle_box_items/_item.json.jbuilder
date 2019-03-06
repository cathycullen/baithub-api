json.(item, :id)
json.(item.bait, :id, :name, :category)
json.image_url image_url(item.bait.image)
