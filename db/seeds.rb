# Create a company

30.times do
Company.create(:activated => true,
               :website => Faker::Internet.url,
               :name => Faker::Company.name,
               :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
               :status => "active")
end

# Create a cohort
Cohort.create(:name => "Squirrels 2013")
Cohort.create(:name => "Foxes 2013")
Cohort.create(:name => "Otters 2013")

# Create a Administration
Administration.create(:name => "Administration")

# Create a Mentorship
Mentorship.create(:name => "Mentorship")

# Create a Faculty
Faculty.create(:name => "Faculty")

# Create an admin
User.create(:activated => true,
              :company_name => "Admin Company",
              :email => "admin@admin.com",
              :facebook_url => "www.facebook.com/student",
              :first_name => "Admin first",
              :github_handle => "henrytwang",
              :graduation_date => "2013",
              :groupable_id => 1,
              :groupable_type => "Administration",
              :intro => Faker::Lorem.paragraph(sentence_count = 3),
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => "Admin last",
              :linkedin_url => "www.linkedin.com/student",
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :password => "password",
              :phone => Faker::PhoneNumber.phone_number,
              :status => "active",
              :tumblr_url => "www.tumblr.com/student",
              :twitter_url => "www.twitter.com/student")


#Create 50 active students
50.times do
  User.create(:groupable_id => rand(1..3),
              :groupable_type => "Cohort",
              :company_name => Faker::Company.name,
              :email => Faker::Internet.email,
              :first_name => Faker::Name.first_name,
              :github_handle => "githubisawesome",
              :graduation_date => "2013",
              :intro => Faker::Lorem.paragraph(sentence_count = 3),
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => Faker::Name.last_name,
              :password => "password",
              :phone => Faker::PhoneNumber.phone_number,
              :status => "active")
end

# Create 20 active employers
30.times do
  User.create(:groupable_id => rand(1..11),
              :groupable_type => "Company",
              :email => Faker::Internet.email,
              :first_name => Faker::Name.first_name,
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => Faker::Name.last_name,
              :password => "password",
              :status => "active")
end

# Create 20 interest relationships
20.times do
  Interest.create(:pitcher_id => rand(1..20),
                  :catcher_id => rand(1..20))
end

20.times do
  CompanyContact.create(:user_id => rand(1..10),
                        :company_id => rand(1..11))
end

# Create 10 inactive students
10.times do
  User.create(:groupable_id => rand(1..3),
              :groupable_type => "Cohort",
              :email => Faker::Internet.email,
              :first_name => Faker::Name.first_name,
              :github_handle => "githubisawesome",
              :graduation_date => "2013",
              :intro => Faker::Lorem.paragraph(sentence_count = 3),
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => Faker::Name.last_name,
              :password => "password",
              :phone => Faker::PhoneNumber.phone_number,
              :status => "inactive")
end

# Create 10 inactive employers
10.times do
  User.create(:groupable_id => rand(1..11),
              :groupable_type => "Company",
              :email => Faker::Internet.email,
              :first_name => Faker::Name.first_name,
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => Faker::Name.last_name,
              :password => "password",
              :status => "active")
end


# Create Default Student
User.create(  :activated => true,
              :company_name => Faker::Company.name,
              :email => "student@student.com",
              :facebook_url => "www.facebook.com/student",
              :first_name => Faker::Name.first_name,
              :github_handle => "henrytwang",
              :graduation_date => "2013",
              :groupable_id => rand(1..3),
              :groupable_type => "Cohort",
              :intro => Faker::Lorem.paragraph(sentence_count = 3),
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => Faker::Name.last_name,
              :linkedin_url => "www.linkedin.com/student",
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :password => "password",
              :phone => Faker::PhoneNumber.phone_number,
              :status => "active",
              :tumblr_url => "www.tumblr.com/student",
              :twitter_url => "www.twitter.com/student")

#default student 2
User.create(  :activated => true,
              :company_name => Faker::Company.name,
              :email => "booneteam@gmail.com",
              :facebook_url => "www.facebook.com/student2",
              :first_name => "Garrett",
              :github_handle => "BooneTeam",
              :graduation_date => "2013",
              :groupable_id => rand(1..3),
              :groupable_type => "Cohort",
              :intro => Faker::Lorem.paragraph(sentence_count = 3),
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => "Boone",
              :linkedin_url => "www.linkedin.com/student2",
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :password => "password",
              :phone => Faker::PhoneNumber.phone_number,
              :status => "active",
              :tumblr_url => "www.tumblr.com/student2",
              :twitter_url => "www.twitter.com/student2")

# Create Default Employer
User.create(  :activated => true,
              :groupable_id => 1,
              :groupable_type => "Company",
              :email => "employer@employer.com",
              :first_name => Faker::Name.first_name,
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => Faker::Name.last_name,
              :password => "password",
              :status => "active")


# Create Mentors
  10.times do
  User.create(:groupable_id => 1,
              :groupable_type => "Mentorship",
              :company_name => Faker::Company.name,
              :email => Faker::Internet.email,
              :first_name => Faker::Name.first_name,
              :intro => Faker::Lorem.paragraph(sentence_count = 3),
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => Faker::Name.last_name,
              :password => "password",
              :phone => Faker::PhoneNumber.phone_number,
              :status => "active")
end


# Create Staff
  10.times do
  User.create(:groupable_id => 1,
              :groupable_type => "Faculty",
              :company_name => "DBC",
              :email => Faker::Internet.email,
              :first_name => Faker::Name.first_name,
              :intro => Faker::Lorem.paragraph(sentence_count = 3),
              :location => ["Chicago", "San Francisco", "New York", "Austin"].sample,
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => Faker::Name.last_name,
              :password => "password",
              :phone => Faker::PhoneNumber.phone_number,
              :status => "active")
end


# Create 5 questions for an employer
30.times do |company_id|
  5.times do
    Question.create(:user_id => 44,
                    :company_id => company_id + 1,
                    :text => "#{Faker::Lorem.sentence.chop!}?")
  end
end

# Create 5 answers for a student (id = 9)
5.times do |index|
  Answer.create(:user_id => 9,
                :question_id => index + 1,
                :text => Faker::Lorem.sentence)
end

#default student 3
User.create(  :activated => true,
              :company_name => "Independent",
              :email => "henry.t.wang@gmail.com",
              :facebook_url => "www.facebook.com/henry.wang",
              :first_name => "Henry",
              :github_handle => "henrytwang",
              :graduation_date => "2013",
              :groupable_id => 1,
              :groupable_type => "Cohort",
              :intro => "Never put off for tomorrow, what you can do today. -Thomas Jefferson",
              :last_login => DateTime.new(2013,rand(1..12),rand(1..27)),
              :last_name => "Wang",
              :linkedin_url => "www.linkedin.com/in/henrytwang",
              :location => "San Francisco",
              :password => "password",
              :phone => "815.757.5397",
              :status => "active",
              :tumblr_url => "henwang.tumblr.com",
              :twitter_url => "www.twitter.com/henrytwang")