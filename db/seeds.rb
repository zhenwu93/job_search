# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create(first_name: 'Mike', last_name: 'Wu', phone_number: '917-235-8364', email:'mikewu1@gmail.com', address: '11 Broadway New York, NY 10004')

  JobListing.create(
    title: 'Full Stack Developer',
    description:"TopView Sightseeing is a New York-based double decker bus company
    offering a variety of sightseeing tours by bus, bike, and boat.
    Our growing team of native local experts serve over 1500 customers daily,
    and visitors to the Big Apple can experience New York City with unforgettable views.
    As we are building our new brand, we are growing tremendously and launching
    new websites to enhance the customer experience across our network of brands
    including Bike Rental Central Park and Water Tours New York.
    The Marketing team, the heart of TopView’s Ecommerce & digital marketing strategy,
    is a significant driver of new customers and revenue and is looking for an experienced
    and strategic developer to focus on improving functionality for our digital
    properties and deepening customer experience and engagement by enhancing our
    technologies. This position is for a full-time, on-site Full Stack Developer with 3+ years of experience.
    Infrastructure experience is a big plus.",
    salary: 80000,
    location: "New York, NY",
    job_type: "Full-Time",
    experience: 3,
    requirements: "
    Object Oriented PHP (3+ years of experience).
    Strong knowledge of HTML, CSS, Javascript.
    Experience with MVC frameworks. Laravel is a plus.
    Infrastructure, system admin, and performance tuning experience.
    Experience working with internal and third party APIs (REST, SOAP, JSON, OAUTH).
    Knowledge of CMS & CRM systems.
    Experience working with Relational Databases, queries and normalization. PostgreSQL preferred.
    Ability to write clean, scalable/modular code through source control. GIT required.
    Ability to follow directions and adheres to timelines and project plans.
    Good communication skills, ability to mentor and work collaboratively.",
    company: "TopView Sightseeing")

    JobListing.create(
      title: 'Full Stack Developer',
      description:"At Flywheel, we use technology to bring a more seamless, immersive,
      and personalized product experience to our studio and home riders.
      As a full-stack software developer, you will be a contributing member on our product development scrum team,
      focused on bringing new features and digital experiences to life across mobile, web,
      and IOT platforms. As the job title implies, contributions will span all layers
      of the stack from our React.js based web application to our cloud-based Node.js micro services, designed for high availability and scalability. The ideal candidate has a high standard for code quality and testing methodologies, but also understands how to self start and deliver within the timelines of the business. ",
      salary: 80000,
      location: "New York, NY",
      job_type: "Full-Time",
      experience: 2,
      requirements: "
      2+ years of software development experience.
      Javascript Developer with ES6 experience.
      Experience building NodeJS applications using ExpressJS.
      Experience building and consuming APIs.
      Experience with at least one major NoSQL database.
      Familiar with Git/Github and NPM.
      Experience using AWS and container based deployments.
      Experience working in a Linux environment.",
      company: "Flywheel")
