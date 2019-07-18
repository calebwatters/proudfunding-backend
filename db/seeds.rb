User.destroy_all
Project.destroy_all
Product.destroy_all
CartItem.destroy_all

5.times do 
    name = Faker::FunnyName.name
    user = User.create(name: name, image_url: 'https://wolper.com.au/wp-content/uploads/2017/10/image-placeholder.jpg', email: 'email@example.com')
    company_name = Faker::Company.name
    title = Faker::Commerce.product_name
    goal = 100000
    current = 1029
    image_url1 = 'https://wolper.com.au/wp-content/uploads/2017/10/image-placeholder.jpg'
    project = Project.create(title: title, description: "desc. example..." , company_name: company_name, company_url: 'example.com', image1_url: image_url1, image2_url: image_url1, image3_url: image_url1, user_id: user.id)
    product = Product.create(name: title, description: "desc. example...", project_id: project.id, image1_url: image_url1, image2_url: image_url1, image3_url: image_url1, price: 1000)
end


