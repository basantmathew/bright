# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts 'Seeding Default Users...'
User.create! email: 'admin@bright.local', password: 'brighter', password_confirmation: 'brighter'

puts 'Seeding Demo Data...'
y01 = Category.create! code: '1001', name: 'Classics', kind: 'Literature'

a01 = Asset.create! code: 'B10001', name: 'Pride and Prejudice', category: y01, author: 'Jane Austen',
                   author_sort: 'Austen, Jane', kind: 'Book', format: 'Paperback', language: 'English',
                   rights: 'Public Domain', rating: 10

c01 = Copy.create! asset: a01, name: 'P118127340JA001', quality: 'n', status: 'a'
c02 = Copy.create! asset: a01, name: 'P118127340JA002', quality: 'u', status: 'a'

p01 = Membership.create! code: '1001', name: 'Premium Members', kind: 'Premium'

m01 = Member.create! code: '1234', name: 'John Doe', membership: p01
