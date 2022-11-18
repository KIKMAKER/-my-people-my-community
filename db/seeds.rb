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

project_management = Skill.create(name: "Project Management")
business = Skill.create(name: "Business Consulting")
garden = Skill.create(name: "Landscape Design")
photography = Skill.create(name: "Photography")
graphic_design = Skill.create(name: "Graphic Design")
web_development = Skill.create(name: "Web Development")
educating = Skill.create(name: "Education")
marketing = Skill.create(name: "Marketing")

puts "#{Skill.count} skills created"

puts "Creating categories"

youth = Category.create(name: "Youth")
community_development = Category.create(name: "Community Development")
education = Category.create(name: "Education")
entrepreneurship = Category.create(name: "Entrepreneurship")
sustainability = Category.create(name: "Sustainability")
food = Category.create(name: "Food")
art = Category.create(name: "Art and Culture")
health = Category.create(name: "Health and Wellness")

puts "#{Category.count} categories created"

puts "Creating users"

pedro = User.create(
  first_name: "Pedro",
  last_name: "Miranda",
  username: "pbragamiranda",
  email: "pedro@people.com",
  password: "password",
  bio: "After completing my studies in horticulture at the University of
  Stellenbosch, I did a 1 year internship at a TERRA+ Landscape Architects, a
  small landscape design firm in Cape Town. We mainly focused on residential
  properties and now I have started my own business, Pedro Designs.
  I am looking for a project or business to collaborate with, so that I can
  gain more experience, exposure for my business, as well as to give back/pay
  it forward. I can offer advice/consulting, project management and garden services.",
  location: "Berlin",
  linkedin_url: "linkedin.com/in/pedro"
)

pedro_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{pedro.username}")
pedro.photo.attach(io: pedro_photo, filename: "pedro.jpeg", content_type: "image/jpeg")
pedro.save

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

menno_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{menno.username}")
menno.photo.attach(io: menno_photo, filename: "menno.png", content_type: "image/png")
menno.save

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

kiki_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{kiki.username}")
kiki.photo.attach(io: kiki_photo, filename: "kiki.jpeg", content_type: "image/jpeg")
kiki.save

gabriella = User.create(
  first_name: "Gabriella",
  last_name: "Abdol Aziz",
  username: "gabirein",
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

gabriella_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{gabriella.username}")
gabriella.photo.attach(io: gabriella_photo, filename: "gabriella.jpeg", content_type: "image/jpeg")
gabriella.save

liam = User.create(
  first_name: "Liam",
  last_name: "Strickland",
  username: "str1ck0",
  email: "liam@people.com",
  password: "password",
  bio: "I received my Bachelor of Design specializing in Marketing and Communication
  Design at Red and Yellow. I am currently studying full stack web development at
  Le Wagon, Cape Town. I am looking to apply my graphic design, branding and coding skils
  to a project in South Africa that is meaningful.",
  location: "Australia",
  linkedin_url: "linkedin.com/in/liam"
)


liam_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{liam.username}")
liam.photo.attach(io: liam_photo, filename: "liam.png", content_type: "image/png")
liam.save

caro = User.create(
  first_name: "Caro",
  last_name: "Wamono",
  username: "carolyne_web",
  email: "caro@people.com",
  password: "password",
  bio: "I have worked as a fashion and commercial model, and movement instructor.
  My love for technology, the internet, creating blogs and interest in SEO led me to want to learn how to code and more.
  I plan on starting a tech company in the future.",
  location: "Newlands",
  linkedin_url: "linkedin.com/in/caro"
)

caro_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{caro.username}")
caro.photo.attach(io: caro_photo, filename: "caro.jpeg", content_type: "image/jpeg")
caro.save

chris = User.create(
  first_name: "Chris",
  last_name: "Nguyen",
  username: "ch0rizo",
  email: "chris@people.com",
  password: "password",
  bio: "Loafing around",
  location: "Stavanger",
  linkedin_url: "linkedin.com/in/chris"
)

chris_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{chris.username}")
chris.photo.attach(io: chris_photo, filename: "chris.png", content_type: "image/png")
chris.save

joe = User.create(
  first_name: "Joe",
  last_name: "Owens",
  username: "JowensM",
  email: "joe@people.com",
  password: "password",
  bio: "So I was previously working as a bricklayer for the past 13 years and started taking an interest in computers
  when covid hit and we were all locked away. I started looking into designing websites and joined a codecademy course
  but after finishing that i felt like i needed to take my learning to the next level so i started looking into
  more intensive coding courses then i came across La Wagon and it just seemed like the perfect fit!",
  location: "Kent",
  linkedin_url: "linkedin.com/in/joe"
)

joe_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{joe.username}")
joe.photo.attach(io: joe_photo, filename: "joe.png", content_type: "image/png")
joe.save

dom = User.create(
  first_name: "Dom",
  last_name: "Walsh",
  username: "dommywalsh",
  email: "dom@people.com",
  password: "password",
  bio: "Hey, i'm Dom! I'm 28 years old, from Cape Town, but have been living in Barcelona the last 3 years.
  Health fanatic, nature lover, armchair philosopher probably best describe me as a human.
  My background is in holistic health, but this course marks the start of a new chapter! Incredibly stoked to dive into
  the field of web development, learn new skills, and hopefully form some great friendships in the process.",
  location: "barcelona",
  linkedin_url: "linkedin.com/in/dom"
)

dom_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{dom.username}")
dom.photo.attach(io: dom_photo, filename: "dom.png", content_type: "image/png")
dom.save

tracy = User.create(
  first_name: "Tracy",
  last_name: "Sikenjana",
  username: "tracysik",
  email: "tracy@people.com",
  password: "password",
  bio: "Passionate about facilitating the creative process and connecting people to the skills, knowledge and services that they want or need.
  Offering a wide variety of creative and innovative expertise in various industries including education, technology, science, art and more.",
  location: "amsterdam",
  linkedin_url: "linkedin.com/in/tracy"
)

tracy_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{tracy.username}")
tracy.photo.attach(io: tracy_photo, filename: "tracy.png", content_type: "image/png")
tracy.save

jo = User.create(
  first_name: "Jonathan",
  last_name: "Dreyer",
  username: "JOEDREYER",
  email: "jo@people.com",
  password: "password",
  bio: "Hello! I am South African, born in Cape Town. I love flipping the bird.
  Been living in Australia (Sydney) for the past 5 years, owned my own removals
  company. Was an incredible experience however I am now looking to upskill
  myself and dive into the programming world as I feel it is an important aspect
  of commerce and business in general. Find me on linkedin!",
  location: "stellenbosch",
  linkedin_url: "linkedin.com/in/jod"
)

jo_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{jo.username}")
jo.photo.attach(io: jo_photo, filename: "jo.png", content_type: "image/png")
jo.save

tudes = User.create(
  first_name: "Tudor",
  last_name: "Ojica",
  username: "tudor887",
  email: "tudor@people.com",
  password: "password",
  bio: "What's up everyone, I'm Tudor! I'm a Romanian Dutch national with a BSc in business administration and hospitality management.
  I've worked in four countries, embarked on entrepreneurial endeavors like co-founding a tattoo & barber concept shop in Holland and a high-end European food import business in Zimbabwe.
  I'm always up for some traveling, adventure and meeting open minded folks.",
  location: "amsterdam",
  linkedin_url: "linkedin.com/in/tudor"
)

tudes_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{tudes.username}")
tudes.photo.attach(io: tudes_photo, filename: "tudes.png", content_type: "image/png")
tudes.save

nico = User.create(
  first_name: "Nico",
  last_name: "Wickmann",
  username: "nicowkm",
  email: "nico@people.com",
  password: "password",
  bio: "Just finished school in Hamburg, Germany. Now about to join Le Wagon, for the Web-Development course in Cape Town.
  After the course i'm starting to study in London and planning on working in an Web-Development company (part Time).",
  location: "london",
  linkedin_url: "linkedin.com/in/nico"
)

nico_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{nico.username}")
nico.photo.attach(io: nico_photo, filename: "nico.png", content_type: "image/png")
nico.save

roux = User.create(
  first_name: "Roux",
  last_name: "Du Toit",
  username: "ticklemeexcited",
  email: "roux@people.com",
  password: "password",
  bio: "Automate everything. Love the problem, not the solution. Evidence is providence. Avoid doing harm. Carbon-neutral growth is essential.
  I want to expand my technical know-how and have oversight of the development teams that I manage.",
  location: "berlin",
  linkedin_url: "linkedin.com/in/roux"
)

roux_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{roux.username}")
roux.photo.attach(io: roux_photo, filename: "roux.png", content_type: "image/png")
roux.save

cass = User.create(
  first_name: "cass",
  last_name: "Hill",
  username: "casscalescu",
  email: "cass@people.com",
  password: "password",
  bio: "I love to work in the garden and make spaces beutiful.",
  location: "Woodstock",
  linkedin_url: "linkedin.com/in/jo"
)

cass_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{cass.username}")
cass.photo.attach(io: cass_photo, filename: "cass.png", content_type: "image/png")
cass.save

roel = User.create(
  first_name: "Roel",
  last_name: "Kabamba",
  username: "Roel4811",
  email: "roel@people.com",
  password: "password",
  bio: "Food is my passion!",
  location: "Salt River",
  linkedin_url: "linkedin.com/in/pierre"
)

roel_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{roel.username}")
roel.photo.attach(io: roel_photo, filename: "roel.png", content_type: "image/png")
roel.save

laura = User.create(
  first_name: "laura",
  last_name: "Madi",
  username: "lauraperson",
  email: "laura@people.com",
  password: "password",
  bio: "71 year old entrepreneur who sells beautiful crocheted bikini's on Camps
  Bay beach during the summer seasons in Cape Town.I have worked hard to make
  my bikini business, and now it's time to enjoy a little.",
  location: "Salt River",
  linkedin_url: "linkedin.com/in/pierre"
)

laura_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{laura.username}")
laura.photo.attach(io: laura_photo, filename: "laura.png", content_type: "image/png")
laura.save

sy = User.create(
  first_name: "sy",
  last_name: "Black",
  username: "syrashid",
  email: "sy@people.com",
  password: "password",
  bio: "Life is better with a bit of flair. Find me changing the world from the
  comfort of my couch.",
  location: "Muizenberg",
  linkedin_url: "linkedin.com/in/syblack"
)

sy_photo = URI.open("https://kitt.lewagon.com/placeholder/users/#{sy.username}")
sy.photo.attach(io: sy_photo, filename: "sy.png", content_type: "image/png")
sy.save

puts "#{User.count} users created"

puts "Assigning user_skills to users"

# pedro.user_skills.create(skill: garden)
# pedro.user_skills.create(skill: project_management)
# pedro.user_skills.create(skill: marketing)

menno.user_skills.create(skill: business)
menno.user_skills.create(skill: web_development)

kiki.user_skills.create(skill: web_development)

gabriella.user_skills.create(skill: photography)
gabriella.user_skills.create(skill: web_development)
gabriella.user_skills.create(skill: business)

liam.user_skills.create(skill: graphic_design)
liam.user_skills.create(skill: web_development)

caro.user_skills.create(skill: project_management)
caro.user_skills.create(skill: business)
caro.user_skills.create(skill: marketing)

chris.user_skills.create(skill: web_development)

joe.user_skills.create(skill: garden)
joe.user_skills.create(skill: business)
joe.user_skills.create(skill: web_development)

dom.user_skills.create(skill: business)
dom.user_skills.create(skill: web_development)

tracy.user_skills.create(skill: educating)
tracy.user_skills.create(skill: project_management)
tracy.user_skills.create(skill: web_development)

jo.user_skills.create(skill: garden)
jo.user_skills.create(skill: business)
jo.user_skills.create(skill: web_development)

tudes.user_skills.create(skill: business)
tudes.user_skills.create(skill: project_management)
tudes.user_skills.create(skill: marketing)

nico.user_skills.create(skill: web_development)

roux.user_skills.create(skill: business)
roux.user_skills.create(skill: project_management)

puts "#{UserSkill.count} user_skills assigned to users"

puts "Creating projects"


foodtruck = Project.create(
  user: roel,
  title: "PK's Food Truck",
  description: "Roel is an immigrant from Congo who works as a junior chef in
  a fine dining restaurant called the Test Kitchen in Woodstock, Cape Town.
  He has the dream of opening up his own food truck at the Old Biscuit Mill
  selling gourmet burgers. He needs business and legal advice as well as help
  branding his idea to make it stand out from the rest of the food trucks.",
  location: "Woodstock",
  start_date: DateTime.now - 1.weeks,
  end_date: DateTime.now + 1.months
)

puts "Assigning images to foodtruck project"

foodtruck_photo = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580645/stefan-sommarsjo-ysambitxV8M-unsplash_wax7da.jpg")
foodtruck.photos.attach(io: foodtruck_photo, filename: "foodtruck.jpg", content_type: "image/jpg")
foodtruck_photo1 = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580650/tai-s-captures-JiRSy0GfqPA-unsplash_d3uq4e.jpg")
foodtruck.photos.attach(io: foodtruck_photo1, filename: "foodtruck.jpg", content_type: "image/jpg")
foodtruck_photo2 = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580508/dimitri-photography-jMgoWJKnBcw-unsplash_mzymvj.jpg")
foodtruck.photos.attach(io: foodtruck_photo2, filename: "foodtruck.jpg", content_type: "image/jpg")
foodtruck.save

puts "#{foodtruck.photos.count} photos added to garden."

garden_project = Project.create(
  user: cass,
  title: "Urban Garden",
  description: "Cass is an apartment owner and member of the body corporate of
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

puts "Assigning images to garden project"

garden_project_photo = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580565/markus-spiske-Yy-dHQP-Ax0-unsplash_ftjq8v.jpg")
garden_project.photos.attach(io: garden_project_photo, filename: "garden_project.jpg", content_type: "image/jpg")
garden_project_photo1 = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580584/prateek-gautam-uhWB6BWWz1Q-unsplash_x9fbt7.jpg")
garden_project.photos.attach(io: garden_project_photo1, filename: "garden_project.jpg", content_type: "image/jpg")
garden_project_photo2 = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580525/markus-spiske-4PG6wLlVag4-unsplash_sysrpm.jpg")
garden_project.photos.attach(io: garden_project_photo2, filename: "garden_project.jpg", content_type: "image/jpg")
garden_project.save

puts "#{garden_project.photos.count} photos added to garden."

bikini = Project.create(
  user: laura,
  title: "Mama Bikini",
  description: "Laura, aka Mama Bikini, is a 71 year old entrepreneur who sells
  beautiful crocheted bikini's on Camps Bay beach during the summer seasons in Cape Town.
  Her bikini's are doing very well and she often sells out her product daily.
  She spends alot of time travelling from her home in Khayalitsha and would really
  like some help putting her designs online to reach a broader audience and to cut
  her commute time.",
  location: "Camps Bay",
  start_date: DateTime.now - 1.weeks,
  end_date: DateTime.now + 1.year
)

puts "Assigning images to bikini project"

bikini_photo = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580511/hermes-rivera-baRdxMkxv4M-unsplash_bdrrl0.jpg")
bikini.photos.attach(io: bikini_photo, filename: "bikini.jpg", content_type: "image/jpg")
bikini_photo1 = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580643/stall_aadf7w.webp")
bikini.photos.attach(io: bikini_photo1, filename: "bikini.jpg", content_type: "image/jpg")
bikini_photo2 = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668580642/sebastian-canaves-sTlqVBz87dc-unsplash_ojwqw4.jpg")
bikini.photos.attach(io: bikini_photo2, filename: "bikini.jpg", content_type: "image/jpg")
bikini.save

puts "#{bikini.photos.count} photos added to garden."

tutorly = Project.create(
  user: sy,
  title: "TutorlyABC",
  description: "Teaching young people how to read is one of the most important
  jobs in society. It also happens to be Sy's passion. What isn't her passion
  is web and graphic design. TutorlyABC teaches shy children to read from the
  comfort of their own home. All it needs is a wonderful web app and some
  graphic design to get this small business off it's feet.",
  location: "Muizenberg",
  start_date: DateTime.now + 3.weeks,
  end_date: DateTime.now + 1.year
)
puts "Assigning images to tutorly project"

tutorly_photo = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668616939/element5-digital-OyCl7Y4y0Bk-unsplash_enxz9w.jpg")
tutorly.photos.attach(io: tutorly_photo, filename: "tutorly.jpg", content_type: "image/jpg")
tutorly.save

puts "#{tutorly.photos.count} photos added to garden."

shine = Project.create(
  user: caro,
  title: "Anything that shines",
  description: "When you combine this simple philosophy with learning to listen
  to your body and what feels right for you, you can never go wrong. Health and wellness business looking to grow.",
  location: "newlands",
  start_date: DateTime.now + 3.weeks,
  end_date: DateTime.now + 1.year
)
puts "Assigning images to shine project"

shine_photo = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668631281/Screenshot_2022-11-16_at_22.39.56_t4zzuq.png")
shine.photos.attach(io: shine_photo, filename: "shine.png", content_type: "image/jpg")
shine.save

puts "#{shine.photos.count} photos added to garden."

cheese = Project.create(
  user: tudes,
  title: "Help you find cheeses",
  description: "Importing luxury goods because everyone deserves nice things.",
  location: "newlands",
  start_date: DateTime.now + 3.weeks,
  end_date: DateTime.now + 1.year
)
puts "Assigning images to cheese project"

cheese_photo = URI.open("https://res.cloudinary.com/divqv7xyh/image/upload/v1668631629/ibrahim-boran-lz2PI8Nk5SQ-unsplash_ushk9x.jpg")
cheese.photos.attach(io: cheese_photo, filename: "cheese.jpg", content_type: "image/jpg")
cheese.save

puts "#{cheese.photos.count} photos added to garden."

puts "#{Project.count} projects created"

puts "Assigning skills to projects"

garden_project.project_skills.create(
  [
    { skill: business }
    # { skill: garden }
  ]
)

foodtruck.project_skills.create(
  [
    { skill: business },
    { skill: photography },
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
    { skill: graphic_design },
    { skill: web_development }
  ]
)

shine.project_skills.create(
  [
    { skill: photography },
    { skill: graphic_design }
  ]
)

cheese.project_skills.create(
  [
    { skill: graphic_design },
    { skill: project_management },
    { skill: business }
  ]
)

puts "#{ProjectSkill.count} project_skills assigned to projects"

puts "Assigning project_categories to projects"

garden_project.project_categories.create(
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

tutorly.project_categories.create(
  [
    { category: education },
    { category: youth }
  ]
)

shine.project_categories.create(
  [
    { category: health }
  ]
)

cheese.project_categories.create(
  [
    { category: entrepreneurship }
  ]
)

puts "#{ProjectCategory.count} user_skills assigned to users"

puts "Assigning users as project_members"

garden_project.project_members.create(
  [
    # { user: pedro },
    { user: cass },
    { user: dom },
    { user: gabriella }
  ]
)

foodtruck.project_members.create(
  [
    { user: gabriella },
    { user: menno },
    { user: nico },
    { user: roux },
    { user: liam }
  ]
)

bikini.project_members.create(
  [
    { user: gabriella },
    # { user: pedro },
    { user: chris },
    { user: caro }
  ]
)

tutorly.project_members.create(
  [
    { user: liam },
    { user: tracy },
    { user: kiki }
  ]
)

shine.project_members.create(
  [
    { user: gabriella },
    { user: tracy },
    { user: kiki }
  ]
)

cheese.project_members.create(
  [
    { user: joe },
    { user: cass },
    { user: menno }
  ]
)

puts "#{ProjectMember.count} project_members assigned to projects"


puts "baddass seed file executed, congratulations! ...... CRONUTS RULE EVERYTHING!!!"

# meno_josh_conversation = Conversation.create(invitor: menno, invitee: josh)
# meno_josh_conversation.messages.create(user: menno, content: "Hello Josh")

# cheese.project_members.create([
#   { user: josh, status: "declined" },
#   { user: menno, status: "accepted" }
#   ])
