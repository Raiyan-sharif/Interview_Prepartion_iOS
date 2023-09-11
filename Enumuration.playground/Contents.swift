import UIKit


// String type in
enum Ingredient: String{
    case lettuce = "Romaine Lettuce"
    case croutons = "Salted Croutons"
    case chicken = "Free Range Chicken"
}

let ingredient = Ingredient.lettuce

switch ingredient{
case .lettuce:
    print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces")
case .croutons:
    print("Our \(ingredient.rawValue) makes sure we do not have to use additional salt in our salads")
case .chicken:
    print("Our meal tastes better with \(ingredient.rawValue) to raise the quality")
}

//Get Total Case
enum Student: CaseIterable{
    case r
    case s
    case i
    case g
    case p
}

print(Student.allCases.count)

// Enums with associated values
enum PastaTypesA {
  case spaghetti(cookingTime: Int)
  case penne(cookingTime: Int)
  case ravioli(cookingTime: Int)
  case fusilli(cookingTime: Int)
  case rigatoni(cookingTime: Int)
}

var pastaType = PastaTypesA.spaghetti(cookingTime: 7)

switch pastaType{
case .spaghetti(let cookingTime):
    if cookingTime < 8 {
        print("Spaghetti is still not fully cooked...")
    } else {
        print("Spaghetti is cooked, take it out of the water!")
    }
default: break
}

// Using "where" statements

switch pastaType{
case .spaghetti(let cookingTime) where cookingTime >= 8:
    print("Where clause works")
default:
    print("Pasta is not cooked")
}


enum RecipeInformation{
    case allergens(information: String)
}

let recipeServed = RecipeInformation.allergens(information: "Beef")

switch recipeServed{
case .allergens(let information):
    print("\(information) is Alergic food")
}
