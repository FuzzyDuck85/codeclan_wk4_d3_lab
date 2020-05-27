require_relative('../models/student.rb')

house1 = House.new({
  "name" => "Gryffindor",
  "logo" => "https://i.pinimg.com/474x/1b/39/6c/1b396c80b374fbcf474cf93318b0374b.jpg"
  })
house1.save

house2 = House.new({
    "name" => "Slytherin",
    "logo" => "https://i.pinimg.com/474x/7e/73/8b/7e738b77dc63f51579a4318caa7cd358--slytherin-house-hogwarts-houses.jpg"
    })
house2.save

house3 = House.new({
      "name" => "Hufflepuff",
      "logo" => "https://i.pinimg.com/474x/06/34/ca/0634ca00556e9bb17d5f27efc119be74--cleaning-cloths-crests.jpg"
      })
house3.save

house4 = House.new({
        "name" => "Ravenclaw",
        "logo" => "https://i.pinimg.com/474x/0e/76/02/0e7602407455497e536e3f8fcc997948.jpg"
        })
house4.save

student1 = Student.new({
          "first_name" => "Harry",
          "last_name" => "Potter",
          "house" => "Gryffindor",
          "age" => 11
          })
student1.save

student2 = Student.new({
            "first_name" => "Draco",
            "last_name" => "Malfoy",
            "house" => "Slytherin",
            "age" => 11
            })
student2.save

student3 = Student.new({
              "first_name" => "Newt",
              "last_name" => "Scamander",
              "house" => "Hufflepuff",
              "age" => 60
              })
student3.save

student4 = Student.new({
                "first_name" => "Cho",
                "last_name" => "Chang",
                "house" => "Ravenclaw",
                "age" => 11
                })
student4.save
