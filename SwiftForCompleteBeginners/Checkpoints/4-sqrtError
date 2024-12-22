import Cocoa

enum SqrtError: Error {
    case oob, nr
}

func squareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SqrtError.oob
    }
    for i in 1...100 {
        var square = i * i
        if square == number {
            return i
        }
    }
    throw SqrtError.nr
}

do {
    let result = try squareRoot(81)
    print(result)
} catch SqrtError.oob {
    print("Out of Bounds")
} catch SqrtError.nr {
    print("No Root")
}
