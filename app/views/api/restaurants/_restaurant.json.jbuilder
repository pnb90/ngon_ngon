json.id restaurant.id
json.name restaurant.name
json.address restaurant.address
json.visit restaurant.visit
json.craving restaurant.craving
json.favorite restaurant.favorite
json.comments restaurant.comments
json.user_id restaurant.user_id

json.dishes do
  json.array! restaurant.dishes, partial: 'api/dishes/dish', as: :dish
end