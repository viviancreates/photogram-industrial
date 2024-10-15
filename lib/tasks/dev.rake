desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
   p "Creating sample data"

   if Rails.env.development?
    FollowRequest.destroy_all
    Comment.destroy_all
    Like.destroy_all
    Photo.destroy_all
    User.destroy_all
  end
  
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
