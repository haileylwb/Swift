import Cocoa

protocol Building {
    var numRooms: Int { get }
    var cost: Int { get set }
    var estateAgent: String { get set }
    
    func salesSummary()
}

struct House: Building {
    var numRooms: Int
    var cost: Int
    var estateAgent: String
    
    func salesSummary() {
        print("House has \(numRooms) rooms, costs $\(cost), sold by \(estateAgent)")
    }
}

struct Office: Building {
    var numRooms: Int
    var cost: Int
    var estateAgent: String
    
    func salesSummary() {
        print("Office has \(numRooms) rooms, costs $\(cost), sold by \(estateAgent)")
    }
}

let myHouse = House(numRooms: 4, cost: 50, estateAgent: "Alice")
myHouse.salesSummary()

let myOffice = Office(numRooms: 10, cost: 120, estateAgent: "Bob")
myOffice.salesSummary()
