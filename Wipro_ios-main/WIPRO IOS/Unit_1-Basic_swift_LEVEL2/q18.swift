var bmi = 23.5

switch bmi {
case 0..<18.5:
    print("Underweight")

case 18.5..<25 where bmi < 25:
    print("Normal")

case 25..<30 where bmi >= 25:
    print("Overweight")

case 30... where bmi >= 30:
    print("Obese")

default:
    print("Invalid BMI")
}