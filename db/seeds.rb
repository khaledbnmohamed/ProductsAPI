50.times do
User.create!(
    name: Faker::Name.name,
    password: Faker::Internet.password,
    email: Faker::Internet.email(name: :name)
)
end
150.times do
Product.create!(
    price: rand(1..545_645_46),
    title: Faker::Dessert.variety
)
Product.image_urk.attach(io: File.open('app/'), filename: 'file.jpg')

end

  