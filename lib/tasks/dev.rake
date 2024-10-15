desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
   p "Creating sample data"

   12.times do
    name = Faker::Name.first_name.downcase
    u = User.create(
      email: "#{name}@example.com",
      username: name,
      password: "password",
      private: [true, false].sample
    )
   end
   p "#{User.count} users have been created."
  
end
