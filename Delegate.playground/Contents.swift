import UIKit

protocol Employee{
    var name: String { get }
    var daysWorking: Int { get set}
    func executePrimaryDuty()
}

struct Waitress: Employee{
    let name: String
    var daysWorking = 0
    var primaryDutyDelegate: Employee?
    func executePrimaryDuty() {
        let name: String
        if let primaryDutyDelegate = primaryDutyDelegate{
            name = primaryDutyDelegate.name
        }else{
            name = self.name
        }
        print("\(name) brings delicious food to customers.")
    }
}

struct Cook: Employee{
    let name: String
    var daysWorking = 0
    func executePrimaryDuty() {
        print("\(name) cooks delicious food for customers.")
    }
}

var jennifer = Waitress(name: "Jennifer")
var jane = Waitress(name: "Jane")
var mario = Cook(name: "Mario")

jennifer.primaryDutyDelegate = mario
jennifer.executePrimaryDuty()



protocol Driver {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}
class DeliveryDriver: Driver {
    let name: String
    init(name: String) {
        self.name = name
    }
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food).")
    }
}

class LittleLemon{
    var deliveryDriver: Driver?
    func deliveryFood(_ food: String, to destination: String){
        if let deliveryDriver = deliveryDriver{
            deliveryDriver.driveToDestination(destination, with: food)
        }else{
            print("No delivery driver.")
        }
    }
}

let bob = DeliveryDriver(name: "Bob")
let littleLemon = LittleLemon()
littleLemon.deliveryDriver = bob
littleLemon.deliveryFood("Supper Spaghetti", to: "1 Spaghetti Lane")


