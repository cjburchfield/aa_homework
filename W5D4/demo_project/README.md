# README

COMPLETED
Phase 1: rails new
Create a new rails project using PostgreSQL.
Remember to use the -G, -T, --minimal, and -d=postgresql flags when creating your project!
Remember to change debug to byebug and add pry-rails and annotate in your Gemfile (then bundle install)!
Since you used the -G flag, Rails will not create the .gitattributes and .gitignore files. You can grab those two files from the starter repo at the Download Project button below. Copy them into the root directory of your project.
Remember to create the database!
Remember that you need to have Postgres running in the background!








IN PROGRESS





Phase 2: Create Models and Migrations
DONE: Create a Person model and a people table. 
DONE: Each Person should have a name and a house_id.
You will need to create and run a migration for each model. (Refer to the Migration reading if you need a reminder!)

You will need to create a file called <model_name>.rb in app/models/ for each model.
Replace <model_name> with the (singular, lowercase, snake_case) name of the model.

For each model, you should validate the presence of each attribute that the model can have. (Refer to the Basic Validations reading for an example.) Remember that Rails handles certain validations for you!
Hint: Run bundle exec annotate --models to install a copy of the model's schema at the top of each model file.

Create a House model and a houses table. Each House should have an address. Add appropriate validations.


Phase 3: Create associations
Create associations for House and Person such that Houses can have many #residents and each Person belongs to a #house. (Refer to the readings for belongs_to and has_many for help.)
These associations rely on your specifying the correct primary_key, foreign_key, and class_name. Otherwise, when you call #residents on a House instance, Rails will assume you are following conventions and look for a residents table rather than a people table!
Phase 4: Try it out!
Use the rails console--search for rails console in the ORM Review reading to find out more about it--to create some data and run some basic queries.
You should be able to run the following:

house = House.new(address: '308 Negra Arroyo Lane')
house.save!

person = Person.new(name: 'Walter White', house_id: house.id)
person.save!

Person.first.house # House with address: "308 Negra Arroyo Lane"
House.first.residents # array containing Person with name: "Walter White"