import Cocoa

func random (from array: [Int]?) -> Int{ array?.randomElement() ?? Int.random(in: 1...100) }

print(random(from: [1, 2, 3, 4, 5]))
