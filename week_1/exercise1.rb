def calculate_bmi(weight, height)
  bmi = weight.to_f/height

  "Your BMI is " + bmi.to_s
end

def calculate_groceries
  fruit = 5.0
  meat = 4.0
  vegetables = 6.0

  total = fruit + meat + vegetables

  puts "The total price is $" + total.to_s
end 

print calculate_bmi(140,66)
