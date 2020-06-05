# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

personal_info = PersonalInfo.create(
  name: 'Author',
  nickname: 'Jr',
  birthday: '1990-08-19',
  gender: 'Male',
  country: 'Brazil',
  state: 'SP',
  city: 'São Paulo',
  neighborhood: 'Dunno',
  street: 'Av. X',
  number: 'xxxx',
  zipcode: 'xxxxxxx',
  phone_a: '(11) aaaa-aaaa',
  phone_b: '(11) 9bbbb-bbbb',
  email: 'test@test.com',
  relationship: 'Single',
  focus: 'My focus...',
  greeting: 'Hello There',
  text_hook: 'If you came this far, let me introduce myself',
  github: 'http://github.com',
  gitlab: 'http://gitlab.com',
  linkedin: 'http://linkedin.com',
  footer_text: 'Made by: Author Jr'
)