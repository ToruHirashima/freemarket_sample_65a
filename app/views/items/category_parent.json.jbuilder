json.array! @categories do |category|
  json.id category.id
  json.name category.category
  json.depth category.depth
  json.path_ids category.path_ids
end