
puts "Destroying everything..."

Room.destroy_all
Customer.destroy_all

puts "Create rooms..."

TechnicalTestApi.list_rooms.each do |room|
  Room.create!(
    name:    room["name"],
    address: room["address"],
    zip:     room["zip"],
    city:    room["city"],
    status:  room["status"],
    api_id:  room["id"]
  )
end

puts "Create customers..."

TechnicalTestApi.list_customers.each do |customer|
  Customer.create!(
    name:        customer["name"],
    email:       customer["email"],
    phone:       customer["phone"],
    birthDate:   customer["birthDate"],
    nationality: customer["nationality"],
    status:      customer["status"],
    room:        Room.where(api_id: customer["roomId"]).first
  )
end

puts "Finished !"

