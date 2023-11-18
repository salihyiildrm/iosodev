import UIKit

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

let result = isPrime(17)
print(result)
