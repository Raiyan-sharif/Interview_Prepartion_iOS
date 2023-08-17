import UIKit

class Vehicle{
    var car: Car?
    let id: String
    init(id: String, car: Car?) {
        self.id = id
        self.car = car
        print("\(self) allocated")
    }

    deinit {
        print("\(self) deallocated")
    }
}

class Car{
    var vehicle: Vehicle?
    let name: String
    init(name: String, vehicle: Vehicle?) {
        self.name = name
        self.vehicle = vehicle
        print("\(self) allocated")
    }

    deinit {
        print("\(self) deallocated")
    }
}

//Vehicle(id: "2213", car: nil)
//Car(name: "Kia", vehicle: nil)

var vehicle: Vehicle? = Vehicle(id: "2213", car: nil)
var car: Car? = Car(name: "Kia", vehicle: nil)

vehicle = nil
car = nil
