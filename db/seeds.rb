# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


chapter1 = Chapter.create(title: "Ⲁ")
chapter2 = Chapter.create(title: "ⲃ")
chapter3 = Chapter.create(title: "ⲅ")
chapter4 = Chapter.create(title: "ⲇ")
chapter5 = Chapter.create(title: "ⲉ")
chapter6 = Chapter.create(title: "ⲍ")
chapter7 = Chapter.create(title: "ⲏ")
chapter8 = Chapter.create(title: "ⲑ") #q
chapter9 = Chapter.create(title: "ⲓ")
chapter10 = Chapter.create(title: "ⲕ")
chapter11 = Chapter.create(title: "ⲗ")
chapter12 = Chapter.create(title: "ⲙ")
chapter13 = Chapter.create(title: "ⲛ")
chapter14 = Chapter.create(title: "ⲝ") #x
chapter15 = Chapter.create(title: "ⲟ")
chapter16 = Chapter.create(title: "ⲡ")
chapter17 = Chapter.create(title: "ⲣ")
chapter18 = Chapter.create(title: "ⲥ")
chapter19 = Chapter.create(title: "ⲧ")
chapter20 = Chapter.create(title: "ⲩ")
chapter21 = Chapter.create(title: "ⲫ") #f
chapter22 = Chapter.create(title: "ⲭ") #c
chapter23 = Chapter.create(title: "ⲯ") #y
chapter24 = Chapter.create(title: "ⲱ") #w
chapter25 = Chapter.create(title: "ϣ") #v
chapter26 = Chapter.create(title: "ϥ") #F
chapter27 = Chapter.create(title: "ϩ") #H
chapter28 = Chapter.create(title: "ϫ") #j
chapter29 = Chapter.create(title: "ϭ") #S
chapter30 = Chapter.create(title: "ϯ") #T

entry1 = Entry.create(lexeme: "ⲭ", chapter_id: 22)
entry2 = Entry.create(lexeme: "ⲭⲃⲟⲃ", dialects: "Boharic", pos: "verb", chapter_id: 22)

