# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Question.create([ { title: "In HTML forms, what’s the difference between using the GET method versus POST?", category: "Technical" }, { title: "What’s the difference between white and black box testing?", category: "Technical"}, { title: "Find the prefix and postfix notation for the following infix expression: (a + b – c) * (e / f) – ( g – h/i) ", category: "Technical"}, {title: "Write a function to determine whether or not a string is a palindrome.", category: "Technical"}, {title: "In SQL, what’s the difference between the having clause and the where clause?", category: "Technical"}, { title: "What is cardinality in SQL?", category: "Technical" } ])

 User.create([ {name: "garfield", username: "garfield", email: "garfield@fake", password: "garfield"}, { name: "Arthur", username: "arthur", email: "arthur@fake", password: "arthur"}, {name: "admin2", username: "admin2", email: "admin2@fake", password: "admin2", role: 1} ])
