import UIKit

protocol Employee {
    var name: String { get }
    var daysWorking: Int { get set }
    func executePrimaryDuty()
    func danceToHappyBirthdaySound(lyrics: String)
}

protocol GoodChef {
    func cookGoodFood()
}
protocol GreatChef {
    func cookGreatFood()
}
protocol ExcellentChef {
    func cookExcellentFood()
}

class Person{

}

//extension Person: GoodChef{
//    func cookGoodFood() {
//
//    }
//}
//
//extension Person: GreatChef{
//    func cookGreatFood() {
//
//    }
//}
//
//extension Person: ExcellentChef{
//    func cookExcellentFood() {
//
//    }
//}

protocol BlackBeltChef: GoodChef, GreatChef, ExcellentChef{
    func cookBlackBeltFood()
}

extension Person : BlackBeltChef{
    func cookBlackBeltFood() {

    }

    func cookGoodFood() {

    }

    func cookGreatFood() {

    }

    func cookExcellentFood() {

    }
}

@objc protocol ReservationDataSource{
    @objc optional func reserve(tables: Int) -> Int
    @objc optional var maxReserableTables: Int { get }
}

class ReservationWebsite: ReservationDataSource{
    func reserve(tables: Int) -> Int {
        if tables < 0 {
            return 0
        }
        return tables
    }
}

class ReservationAgent: ReservationDataSource{
    var maxReserableTables: Int = 2
}

protocol Dish{
    var name: String{ get }
    var preparationMinutes: Int{ set get}
    func prepare()
    func plate(artisticLevel: Int)
}

class MainDish: Dish{
    var name: String = ""

    var preparationMinutes: Int = 0

    init(_ name: String, preparationMinutes: Int){
        self.name = name
        self.preparationMinutes = preparationMinutes
    }

    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }

    func plate(artisticLevel: Int) {
        print("Plating artistic level: \(artisticLevel)")
    }


}


let myMainDish = MainDish("Super Spaghetti", preparationMinutes: 35)
myMainDish.prepare()
myMainDish.plate(artisticLevel: 10)
