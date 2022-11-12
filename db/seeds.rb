puts 'Clearing Database...'

ProjectCategory.destroy_all
ProjectSkill.destroy_all
ProjectMember.destroy_all
UserSkill.destroy_all
Post.destroy_all
Message.destroy_all
Conversation.destroy_all
Category.destroy_all
Skill.destroy_all
Project.destroy_all
User.destroy_all

puts "Creating skills"

architecture = Skill.create(name: "Architecture")
finance = Skill.create(name: "Finance")
project_management = Skill.create(name: "Project Management")
accounting = Skill.create(name: "Accounting")

puts "#{Skill.count} skills created"

puts "Creating categories"

youth = Category.create(name: "Youth")
community_development = Category.create(name: "Community Development")
education = Category.create(name: "Education")
sport = Category.create(name: "Sport")

puts "#{Category.count} categories created"

puts "Creating users"

cevin = User.create!(
  first_name: "Cevin",
  last_name: "Jones",
  username: "Cevin_with_a_C",
  email: "cevin@people.com",
  password: "password",
  bio: "After completing my studies and professional registration, I joined a
  small architecture firm in Cape Town. I spent 4 years with the firm, working
  on a broad spectrum of work, from small scale private residences, to large
  scale commercial buildings. As of January 2019, i assumed the role of Chief
  Architect within the Infrastructure Delivery Directorate of the Western Cape
  Education Department, with a focus on school maintenance. I would love to
  offer some of my experience in this field to under resourced projects in SA.",
  location: "Cape Town",
  linkedin_url: "linkedin.com/in/cevinjones"
  )

martha = User.create(
  first_name: "Martha",
  last_name: "Williams",
  username: "Martha_Love",
  email: "martha@community.com",
  password: "password",
  bio: "Born and raised in Grassy Park, Cape Town, my family is everything to
  me. I have worked as a secretary for many years, and look forward to my
  retirement next year. Since my youngest son finished high school I have had
  time to get more involved in the pre-school in my neighbourhood.
  I'm passionate about helping my community however I can.",
  location: "Grassy Park",
  linkedin_url: "linkedin.com/in/marthawilliams"
)

david = User.create(
  first_name: "David",
  last_name: "van Niekerk",
  username: "Dave100",
  email: "david@people.com",
  password: "password",
  bio: "Cape Town based winemaker and family man. Since having children I am
  more invested in ensuring a better life for all children of our country.
  I'd like to get involved in development projects, offering my
  time and experience in business.",
  location: "Constantia",
  linkedin_url: "linkedin.com/in/davidvanniekerk"
)

shehnaaz = User.create(
  first_name: "Shehnaaz",
  last_name: "Moosa",
  username: "ShehM",
  email: "shehnaaz@community.com",
  password: "password",
  bio: "Educated as an engineer, I now lead a climate change consultancy in
  Salt River. I've worked on many community based projects in the Cape Flats
  and hope to see clean riverways and basic services provided to all residents.",
  location: "Wynberg",
  linkedin_url: "linkedin.com/in/shehnaazmoosa"
)

puts "#{User.count} users created"

puts "Assigning user_skills to users"

cevin.user_skills.create(skill: architecture)
cevin.user_skills.create(skill: project_management)
martha.user_skills.create(skill: finance)
david.user_skills.create(skill: project_management)
david.user_skills.create(skill: accounting)
shehnaaz.user_skills.create(skill: finance)
shehnaaz.user_skills.create(skill: project_management)

puts "#{UserSkill.count} user_skills assigned to users"

puts "Creating projects"

sunshine = Project.create(
  user: martha,
  title: "Sunshine Creche",
  description: "Mama bongi has been running this creche out of her house for 15
  years, it's time to help this local gem really shine! At least 20 delightful
  children can be found at Sunshine Creche each afternoon. They receive lunch
  everyday and this creche deserves a better kitchen and general fix up.",
  location: "Nyanga",
  start_date: DateTime.now,
  end_date: DateTime.now + 1.months,
  photo: "sunshine"
)

soccer = Project.create(
  user: shehnaaz,
  title: "Khayelitsha Soccer Field",
  description: "The Superstar Arrows soccer team at Khaylitsha Primary school
  has been started as a community effort to help young school children stay
  busy after school and away from having to go home and be unsupervised until
  their parents come home from work. But the school needs help turning the patch
  of land behind the property into a working soccer field.",
  location: "Khayelitsha",
  start_date: DateTime.now - 1.weeks,
  end_date: DateTime.now + 1.months,
  photo: "soccer"
)

puts "#{Project.count} users created"

puts "Assigning project_categories to projects"

sunshine.project_categories.create(
  [
    { category: youth },
    { category: community_development },
    { category: education }
  ]
)

soccer.project_categories.create(
  [
    { category: sport },
    { category: youth }
  ]
)

puts "#{ProjectCategory.count} user_skills assigned to users"

puts "Assigning users as project_members"
sunshine.project_members.create(
  [
    { user: cevin }
  ]
)

soccer.project_members.create(
  [
    { user: david }
  ]
)
puts "baddass seed file executed, congratulations!"

# image_data = File.read('path/to/image.jpg')
# Model.create!([
#   {
#     ...
#     image: image_data
#   },
#   ...
# ])
