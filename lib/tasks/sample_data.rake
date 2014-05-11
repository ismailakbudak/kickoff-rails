 namespace :db do
  
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
  

  desc "Create admin user"
  task admin: :environment do
     admin = User.create!(name: "ismail admin",
                          email: "isoakbudak@gmail.com",
                          password: "123456",
                          password_confirmation: "123456",
                          admin: true)
  end
  
  # Taskı çalıştırmak için
  # rake db:reset
  # rake db:populate
  # rake test:prepare

end