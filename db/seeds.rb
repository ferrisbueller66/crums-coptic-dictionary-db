# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book1 = Book.create(title: "Coptic Dictionary", author: "W. E. Crum", language: "Coptic", year: 1939)
book2 = Book.create(title: "A Compendious Syriac Dictionary", author: "R. Payne Smith", language: "Syriac", year:  1903)

chapter1 = Chapter.create(title: "a", book_id: 1)
chapter2 = Chapter.create(title: "b", book_id: 1)
chapter3 = Chapter.create(title: "g", book_id: 1)
chapter4 = Chapter.create(title: "d", book_id: 1)
chapter5 = Chapter.create(title: "e", book_id: 1)
chapter6 = Chapter.create(title: "z", book_id: 1)
chapter7 = Chapter.create(title: "h", book_id: 1)
chapter8 = Chapter.create(title: "q", book_id: 1)
chapter9 = Chapter.create(title: "i", book_id: 1)
chapter10 = Chapter.create(title: "k", book_id: 1)
chapter11 = Chapter.create(title: "l", book_id: 1)
chapter12 = Chapter.create(title: "m", book_id: 1)
chapter13 = Chapter.create(title: "n", book_id: 1)
chapter14 = Chapter.create(title: "x", book_id: 1)
chapter15 = Chapter.create(title: "o", book_id: 1)
chapter16 = Chapter.create(title: "p", book_id: 1)
chapter17 = Chapter.create(title: "r", book_id: 1)
chapter18 = Chapter.create(title: "s", book_id: 1)
chapter19 = Chapter.create(title: "t", book_id: 1)
chapter20 = Chapter.create(title: "u", book_id: 1)
chapter21 = Chapter.create(title: "f", book_id: 1)
chapter22 = Chapter.create(title: "c", book_id: 1)
chapter23 = Chapter.create(title: "y", book_id: 1)
chapter24 = Chapter.create(title: "w", book_id: 1)
chapter25 = Chapter.create(title: "v", book_id: 1)
chapter26 = Chapter.create(title: "F", book_id: 1)
chapter27 = Chapter.create(title: "H", book_id: 1)
chapter28 = Chapter.create(title: "j", book_id: 1)
chapter29 = Chapter.create(title: "S", book_id: 1)
chapter30 = Chapter.create(title: "T", book_id: 1)

page1 = Page.create(pagination: 516, chapter_id: 22)
page2 = Page.create(pagination: 516, chapter_id: 22)

entry1 = Entry.create(lexeme: "c", page_id: 1)
entry2 = Entry.create(lexeme: "cbob", dialects: "Boharic", pos: "verb", page_id: 1)

