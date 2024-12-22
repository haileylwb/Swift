import Cocoa

class Animal {
    var legs = 4
}

class Dog: Animal {
    func speak() {
        print("Bark!")
    }
}
 
class Cat: Animal {
    let isTame: Bool
    func speak() {
        print("Meow!")
    }
    
    init(isTame: Bool) {
        self.isTame = isTame
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bark! I'm a Corgi")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Bark! I'm a Poodle")
    }
}

class Persian: Cat {
    override func speak() {
        print("Meow! I'm a Persian")
    }
}

class Lion: Cat {
    override func speak() {
        print("Rawr! I'm a Lion")
    }
}

let myCorgi = Corgi()
myCorgi.speak()
let myPoodle = Poodle()
myPoodle.speak()
let myPersian = Persian(isTame: true)
myPersian.speak()
let myLion = Lion(isTame: false)
myLion.speak()
