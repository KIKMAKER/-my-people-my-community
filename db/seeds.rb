require "open-uri"

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

finance = Skill.create(name: "Finance")
project_management = Skill.create(name: "Project Management")
accounting = Skill.create(name: "Accounting")
business = Skill.create(name: "Business Consulting")
garden = Skill.create(name: "Landscape Design")
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
sustainability = Category.create(name: "Sustainability")
food = Category.create(name: "Food")
art = Category.create(name: "Art and Culture")

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
  linkedin_url: "linkedin.com/in/joshuapotgieter"
)
# josh_photo = URI.open("")
# josh.photo.attach(io: josh_photo, filename: "josh.png", content_type: "image/png")
# josh.save

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
  linkedin_url: "linkedin.com/in/ryanbrouwer"
)

# menno_photo = URI.open("")
# menno.photo.attach(io: menno_photo, filename: "menno.png", content_type: "image/png")
# menno.save

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
  linkedin_url: "linkedin.com/in/kikikennedy"
)

# kiki_photo = URI.open("")
# kiki.photo.attach(io: kiki_photo, filename: "kiki.png", content_type: "image/png")
# kiki.save

gabriella = User.create(
  first_name: "Gabriella",
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
  linkedin_url: "linkedin.com/in/gabriellaabdolaziz"
)

# gabriella_photo = URI.open("")
# gabriella.photo.attach(io: gabriella_photo, filename: "gabriella.png", content_type: "image/png")
# gabriella.save

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
  linkedin_url: "linkedin.com/in/liam"
)

# liam_photo = URI.open("")
# liam.photo.attach(io: liam_photo, filename: "liam.png", content_type: "image/png")
# liam.save

jo_ann = User.create(
  first_name: "Jo Ann",
  last_name: "Hill",
  username: "JoH",
  email: "joann@people.com",
  password: "password",
  bio: "I love to work in the garden and make spaces beutiful.",
  location: "Woodstock",
  linkedin_url: "linkedin.com/in/jo"
)

# jo_ann_photo = URI.open("")
# jo_ann.photo.attach(io: jo_ann_photo, filename: "jo_ann.png", content_type: "image/png")
# jo_ann.save

pierre = User.create(
  first_name: "Pierre",
  last_name: "Kabamba",
  username: "PK",
  email: "pierre@people.com",
  password: "password",
  bio: "Food is my passion!",
  location: "Salt River",
  linkedin_url: "linkedin.com/in/pierre"
)

# pierre_photo = URI.open("")
# pierre.photo.attach(io: pierre_photo, filename: "pierre.png", content_type: "image/png")
# pierre.save

gloria = User.create(
  first_name: "Gloria",
  last_name: "Madi",
  username: "Glo",
  email: "gloria@people.com",
  password: "password",
  bio: "71 year old entrepreneur who sells beautiful crocheted bikini's on Camps
  Bay beach during the summer seasons in Cape Town.I have worked hard to make
  my bikini business, and now it's time to enjoy a little.",
  location: "Salt River",
  linkedin_url: "linkedin.com/in/pierre"
)

# gloria_photo = URI.open("")
# gloria.photo.attach(io: gloria_photo, filename: "gloria.png", content_type: "image/png")
# gloria.save

cheri = User.create(
  first_name: "Cheri",
  last_name: "Black",
  username: "Blacki",
  email: "cheri@people.com",
  password: "password",
  bio: "Life is better with a bit of flair. Find me changing the world from the
  comfort of my couch.",
  location: "Muizenberg",
  linkedin_url: "linkedin.com/in/cheriblack"
)

# cheri_photo = URI.open("")
# cheri.photo.attach(io: cheri_photo, filename: "gloria.png", content_type: "image/png")
# cheri.save

puts "#{User.count} users created"

puts "Assigning user_skills to users"

josh.user_skills.create(skill: garden)
josh.user_skills.create(skill: project_management)
josh.user_skills.create(skill: permaculture)

menno.user_skills.create(skill: project_management)
menno.user_skills.create(skill: business)
menno.user_skills.create(skill: web_development)

kiki.user_skills.create(skill: compost)
kiki.user_skills.create(skill: web_development)

gabriella.user_skills.create(skill: photography)
gabriella.user_skills.create(skill: web_development)
gabriella.user_skills.create(skill: compost)

liam.user_skills.create(skill: graphic_design)
liam.user_skills.create(skill: web_development)

puts "#{UserSkill.count} user_skills assigned to users"

puts "Creating projects"

garden = Project.create(
  user: jo_ann,
  title: "Urban Garden/Community Space",
  description: "Jo Ann is an apartment owner and member of the body corporate of
  Studio 57 Apartments in Woodstock, Cape Town. It is a small apartment block
  which has a large, open, communal area on its rooftop that gets plenty of sun.
  She would like to turn this space into a green area with a vegetable garden
  for the tenants. She has been given the go ahead by the other members of the
  body corporate and tenants to implement this idea. She has collected donations
  from some tenants in the building and now needs help from someone with knowledge
  and experience in urban landscape design as well as gardening which
  will then be sustained by the tenants and a hired gardener.",
  location: "Woodstock",
  start_date: DateTime.now,
  end_date: DateTime.now + 1.months
)

# garden_photo = URI.open("")
# garden.photo.attach(io: garden_photo, filename: "garden.png", content_type: "image/png")
# garden.save

foodtruck = Project.create(
  user: pierre,
  title: "PK's Food Truck",
  description: "Pierre is an immigrant from Congo who works as a junior chef in
  a fine dining restaurant called the Test Kitchen in Woodstock, Cape Town.
  He has the dream of opening up his own food truck at the Old Biscuit Mill
  selling gourmet burgers. He needs business and legal advice as well as help
  branding his idea to make it stand out from the rest of the food trucks.",
  location: "Woodstock",
  start_date: DateTime.now - 1.weeks,
  end_date: DateTime.now + 1.months
)

# foodtruck_photo = URI.open("")
# foodtruck.photo.attach(io: foodtruck_photo, filename: "foodtruck.png", content_type: "image/png")
# foodtruck.save

bikini = Project.create(
  user: gloria,
  title: "Mama Bikini",
  description: "Gloria, aka Mama Bikini, is a 71 year old entrepreneur who sells
  beautiful crocheted bikini's on Camps Bay beach during the summer seasons in Cape Town.
  Her bikini's are doing very well and she often sells out her product daily.
  She spends alot of time travelling from her home in Khayalitsha and would really
  like some help putting her designs online to reach a broader audience and to cut
  her commute time.",
  location: "Camps Bay",
  start_date: DateTime.now - 1.weeks,
  end_date: DateTime.now + 1.year
)

# bikini_photo = URI.open("")
# bikini.photo.attach(io: bikini_photo, filename: "bikini.png", content_type: "image/png")
# bikini.save

tutorly = Project.create(
  user: cheri,
  title: "TutorlyABC",
  description: "Teaching young people how to read is one of the most important
  jobs in society. It also happens to be Cheri's passion. What isn't her passion
  is web and graphic design. TutorlyABC teaches shy children to read from the
  comfort of their own home. All it needs is a wonderful web app and some
  graphic design to get this small business off it's feet.",
  location: "Muizenberg",
  start_date: DateTime.now + 3.weeks,
  end_date: DateTime.now + 1.year
)

# tutorly_photo = URI.open("")
# tutorly.photo.attach(io: tutorly_photo, filename: "bikini.png", content_type: "image/png")
# tutorly.save

puts "#{Project.count} projects created"

puts "Assigning skills to projects"

garden.project_skills.create(
  [
    { skill: compost },
    { skill: permaculture },
    { skill: finance }
  ]
)

foodtruck.project_skills.create(
  [
    { skill: business },
    { skill: photography },
    { skill: project_management },
    { skill: graphic_design },
    { skill: web_development }
  ]
)

bikini.project_skills.create(
  [
    { skill: business },
    { skill: project_management },
    { skill: graphic_design },
    { skill: web_development },
    { skill: photography }
  ]
)

tutorly.project_skills.create(
  [
    { skill: accounting },
    { skill: graphic_design },
    { skill: web_development },
  ]
)

puts "#{ProjectSkill.count} project_skills assigned to projects"

puts "Assigning project_categories to projects"

garden.project_categories.create(
  [
    { category: entrepreneurship },
    { category: community_development },
    { category: sustainability }
  ]
)

foodtruck.project_categories.create(
  [
    { category: entrepreneurship },
    { category: food }
  ]
)

bikini.project_categories.create(
  [
    { category: entrepreneurship },
    { category: art }
  ]
)

bikini.project_categories.create(
  [
    { category: education },
  ]
)

puts "#{ProjectCategory.count} user_skills assigned to users"

puts "Assigning users as project_members"

garden.project_members.create(
  [
    { user: josh },
    { user: gabriella }
  ]
)

foodtruck.project_members.create(
  [
    { user: gabriella },
    { user: menno },
    { user: liam }
  ]
)

bikini.project_members.create(
  [
    { user: gabriella },
    { user: josh },
    { user: menno }
  ]
)

tutorly.project_members.create(
  [
    { user: liam },
    { user: kiki }
  ]
)

puts "#{ProjectMember.count} project_members assigned to projects"

puts "baddass seed file executed, congratulations!"
