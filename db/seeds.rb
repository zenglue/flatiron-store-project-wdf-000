10.times do
  Item.create(
    title: Faker::Commerce.product_name,
    inventory: Faker::Number.number(2),
    price: Faker::Number.number(4),
    description: Faker::Hipster.paragraph(3)
  )
  Category.create(title: Faker::Commerce.department(2, true))
end
5.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end
