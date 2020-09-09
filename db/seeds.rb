# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Post.destroy_all
Project.destroy_all
User.destroy_all

user_1 = User.create(first_name: 'bob', last_name: 'johnson', email: "bob@g.com", password: '123456')
user_2 = User.create(first_name: 'john', last_name: 'smith', email: "smith@g.com", password: '123456')
user_3 = User.create(first_name: 'sarah', last_name: 'kimly', email: "sarah@g.com", password: '123456')

project_1 = Project.create(city:"london", user_id: user_1.id, title: 'Expansion', company: 'Eden', headline: 'international development', job_description: 'working to help a us company expand to europe', starts_at: Date.today )
project_2 = Project.create(city:"london", user_id: user_2.id, title: 'sales', company: 'alush', headline: 'web-development', job_description: 'lalal alal alalalala alalala la lal la ', starts_at: 50.days.ago)
project_3 = Project.create(city: "berlin", user_id: user_3.id, title: 'Marketing', company: 'marketco', headline: 'marking research and development', job_description: 'lalal alal alalalala alalala la lal la ', starts_at: 200.days.ago)
project_4 = Project.create(city: "paris", user_id: user_1.id, title: 'New', company: 'lala', headline: 'Web-Dev', job_description: 'lalal alal alalalala alalala la lal la ', starts_at: 3.years.ago)

Review.create(user: User.first, project: Project.first, content: 'great time was fun', rating: 4)
Review.create(user: User.second, project: Project.second, content: 'yay super good', rating: 5)
Review.create(user:User.last, project: Project.last, content: 'could of been better', rating: 2)


Post.create(user: User.first, project: Project.first, content: 'something')
Post.create(user:User.last, project: Project.first, content: 'something back')

NewProjectRequest.create(project_id: project_4, user_id: user_1)
puts "#{User.count}users created!"
puts "#{Project.count}projects created!"
puts "#{Review.count}reviews created!"
puts "#{Post.count}posts created!"
# projects = YAML.load(File.join('__dir__','lib/project.yml'))
# byebug
