import Cocoa

struct Car {
    let model: String
    let numSeats: Int
    private(set) var currentGear = 1
    
    mutating func changeGear(increase: Bool){
        if increase && currentGear < 10 {
            currentGear += 1
        } else if !increase && currentGear > 1 {
            currentGear -= 1
        }
    }
}

var myCar = Car(model: "Tesla Model 3", numSeats: 5)

print("Current Gear: \(myCar.currentGear)")
myCar.changeGear(increase: true)
print("Current Gear: \(myCar.currentGear)")
myCar.changeGear(increase: false)
print("Current Gear: \(myCar.currentGear)")
myCar.changeGear(increase: false)
