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
business = Skill.create(name: "Business consulting")
garden = Skill.create(name: "Landscape design")
permaculture = Skill.create(name: "Permaculture")
compost = Skill.create(name: "Composting")
photography = Skill.create(name: "Photography")
graphic_design = Skill.create(name: "Graphic Design")
web_development = Skill.create(name: "Web Development")

puts "#{Skill.count} skills created"

puts "Creating categories"

youth = Category.create(name: "Youth")
community_development = Category.create(name: "Community Development")
education = Category.create(name: "Education")
sport = Category.create(name: "Sport")
entrepreneurship = Category.create(name: "Entrepreneurship")

puts "#{Category.count} categories created"

puts "Creating users"

josh = User.create(
  first_name: "Joshua",
  last_name: "Potgieter",
  username: "josh gardens",
  email: "joshua@people.com",
  password: "password",
  bio: "After completing my studies in horticulture at the University of
  Stellenbosch, I did a 1 year internship at a TERRA+ Landscape Architects, a
  small landscape design firm in Cape Town. We mainly focused on residential
  properties and now I have started my own business, Joshua Garden Designs.
  I am looking for a project or business to collaborate with, so that I can
  gain more experience, exposure for my business, as well as to give back/pay
  it forward. I can offer advice/consulting, project management and garden services.",
  location: "Claremont",
  skills: "#{garden}" "#{project_management}" "#{permaculture}",
  linkedin_url: "linkedin.com/in/joshuapotgieter",
  )

menno = User.create(
  first_name: "Menno",
  last_name: "Brouwer",
  username: "mennofromheaven",
  email: "menno@people.com",
  password: "password",
  bio: "Jack of all trades and master of a lot! I have a passion for business, and
  people, and co-founding multiple local businesses, I would like to pivot into
  business consulting. I would like to offer my skills to anyone seeking business
   advice any kind of mentorship pro bono in exchange for an opportunity to try out
   the business consulting models I have built.",
  location: "Woodstock",
  skills: "#{business}" "#{project_management}" "#{web_development}",
  linkedin_url: "linkedin.com/in/ryanbrouwer",
   )


kiki = User.create(
  first_name: "Kiki",
  last_name: "Kennedy",
  username: "Kikmaker",
  email: "kiki@people.com",
  password: "password",
  bio: "My love for the planet has translated into me starting a Mother Earth
  Conscious business: Gooi! Gooi offers a service of waste collection from households
  for composting. We would love to collaborate with any garden owners
  in the area to get our brand out there and to spread the message about caring
  for our planet.",
  location: "Claremont",
  skills: "#{compost}",
  linkedin_url: "linkedin.com/in/kikikennedy",
)

gabriella = User.create(
  first_name: "“Gabriella",
  last_name: "Abdol Aziz",
  username: "gabi rein",
  email: "gabi@people.com",
  password: "password",
  bio: "I am a small business owner and professional photographer with my
  certification from Orms Cape Town School of Photography. My portfolio consists
  of landscape photography from my travels and my passion for food has led me to
  want to specialize in food photography. I would like to collaborate with any
  individuals in need of great food shots for their businesses and blogs.",
  location: "Camps Bay",
  skills: "#{photography}" "#{web_development}",
  linkedin_url: "linkedin.com/in/gabriellaabdolaziz",
)

liam = User.create(
  first_name: "Liam",
  last_name: "Strickland",
  username: "stricko",
  email: "liam@people.com",
  password: "password",
  bio: "I received my Bachelor of Design specializing in Marketing and Communication
  Design at Red and Yellow. I am currently studying full stack web development at
  Le Wagon, Cape Town. I am looking to apply my graphic design, branding and coding skils
  to a project in South Africa that is meaningful.",
  location: "Australia",
  Skills: "#{graphic_design}" "#{web_development}",
  linkedin_url: "linkedin.com/in/liam",
)


puts "#{User.count} users created"

puts "Assigning user_skills to users"

josh.user_skills.create(skill: garden)
josh.user_skills.create(skill: project_management)
menno.user_skills.create(skill: business)
menno.user_skills.create(skill: project_management)
menno.user_skills.create(skill: web_development)
kiki.user_skills.create(skill: compost)
gabriella.user_skills.create(skill: photography)
gabriella.user_skills.create(skill: web_development)
liam.user_skills.create(skill: graphic_design)
liam.user_skills.create(skill: web_development)


puts "#{UserSkill.count} user_skills assigned to users"

puts "Creating projects"

garden = Project.create(
  user: "Jo Ann",
  title: "Urban Garden/Community Space",
  description: "She is an apartment owner and member of the body corporate of
  Studio 57 Apartments in Woodstock, Cape Town. It is a small apartment block
  which has a large, open, communal area on its rooftop that gets plenty of sun.
  She would like to turn this space into a green area with a vegetable garden
  for the tenants. She has been given the go ahead by the other members of the
  body corporate and tenants to implement this idea. She has collected donations
  from some tenants in the building and now needs help from someone with knowledge
  and experience in urban landscape design/architecture as well as gardening which
  will then be sustained by the tenants and a hired gardener.",
  location: "Woodstock",
  start_date: DateTime.now,
  end_date: DateTime.now + 1.months,
)

foodtruck = Project.create(
  user: "Pierre Kabamba",
  title: "PK's Food Truck",
  description: "Pierre is an immigrant from Congo who works as a junior chef in
  a fine dining restaurant called the Test Kitchen in Woodstock, Cape Town.
  He has the dream of opening up his own food truck at the Old Biscuit Mill
  selling gourmet burgers. He needs business and legal advice as well as help
  branding his idea to make it stand out from the rest of the food trucks.",
  location: "Woodstock",
  start_date: DateTime.now - 1.weeks,
  end_date: DateTime.now + 1.months,
)

bikini = Project.create(
   user: "Gloria",
   title: "Mama Bikini",
   description: "Gloria, aka Mama Bikini, is a 71 year old, entrepreneur who sells
   beautiful, crocheted bikini's on Camps Bay beach during the summer seasons in Cape Town.
   Her bikini's are doing very well and she often sells out her product daily.
   She spends alot of time travelling from her home in Khayalitsha and would really
   like some help putting her designs online to reacha broader audience and to cut
   her commute time.",
   location: "Camps Bay",
   #no start date or end date
)

puts "#{Project.count} users created"

puts "Assigning skills to projects"

garden.project_skills.create(
  [
    { skill: garden },
    { skill: architecture },
  ]
)

foodtruck.project_skills.create(
  [
    { skill: business },
    { skill: photography },
    { skill: project_management },
    { skill: graphic_design },
    { skill: web_development},
  ]
)

bikini.project_skills.create(
  [
    { skill: business },
    { skill: project_management},
    { skill: graphic_design},
    { skill: web_development},
    { skill: photography},
  ]
)

puts "#{ProjectSkill.count} project_skills assigned to projects"

puts "Assigning project_categories to projects"

garden.project_categories.create(
  [

    { category: community_development },
  ]
)

foodtruck.project_categories.create(
  [
    { category: entrepreneurship },
    { category: community_development },
  ]
)
bikini.project_categories.create(
[
  { category: entrepreneurship },
  { category: community_development },
]
)

puts "#{ProjectCategory.count} user_skills assigned to users"

puts "Assigning users as project_members"
garden.project_members.create(
  [
    { user: josh },
    { user: kiki }
  ]
)

foodtruck.project_members.create(
  [
    { user: gabi },
    { user: menno },
    { user: liam },

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
