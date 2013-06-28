namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    5.times do |n|
      puts "[DEBUG] creating user #{n+1} of 5"
      name = Faker::Name.name
      email = "user-#{n+1}@example.com"
      password = "password"
      User.create!( name: name,
                    email: email,
                    password: password,
                    password_confirmation: password)
    end

    User.all.each do |user|
      puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
      5.times do |n|
        image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
        description = %w(test1 test2 test3 test4 test5 test6).sample
        user.pins.create!(image: image, description: description)
      end
    end
  end
end