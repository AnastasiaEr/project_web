# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
Image.delete_all
Image.reset_pk_sequence
Image.create([

               {name: 'TR1', file: 'TR1.jpg', theme_id: 2},
               {name: 'TR2', file: 'TR2.jpg', theme_id: 2},
               {name: 'TR3', file: 'TR3.jpg', theme_id: 2},
               {name: 'TR4', file: 'TR4.jpg', theme_id: 2},
               {name: 'TR5', file: 'TR5.jpg', theme_id: 2},
               {name: 'KV1', file: 'KV1.jpg', theme_id: 3},
               {name: 'KV2', file: 'KV2.jpg', theme_id: 3},
               {name: 'KV3', file: 'KV3.jpg', theme_id: 3},
               {name: 'KUB1', file: 'KUB1.jpg', theme_id: 4},
               {name: 'KUB2', file: 'KUB2.jpg', theme_id: 4},
               {name: 'KUB3', file: 'KUB3.jpg', theme_id: 4}
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

               {name: "-----"},      # 1 Нет темы
               {name: "Сколько треугольников на картинке?"},      # 2
               {name: "Сколько квадратов на картинке?"},      # 3
               {name: "Сколько элементов нужно добавить, чтобы получился кубик?"},      # 4
             ])



User.delete_all
User.reset_pk_sequence
User.create([

              {name: "Example User", email: "example@railstutorial.org"},
            ])

