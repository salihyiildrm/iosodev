import UIKit
func addFiveToMaxPlace(_ number: Int) -> Int {
    var numArray = Array(String(number))
    
    if let maxDigit = numArray.max(), let maxIndex = numArray.firstIndex(of: maxDigit) {
        numArray.insert("5", at: maxIndex + 1)
    } else {
        numArray.insert("5", at: 0)
    }
    
    if let result = Int(numArray.joined()) {
        return result
    } else {
        return 0
    }
}

// Kullanım örnekleri:
let result1 = addFiveToMaxPlace(0)
print(result1)  // 50

let result2 = addFiveToMaxPlace(28)
print(result2)  // 528

let result3 = addFiveToMaxPlace(920)
print(result3)  // 9520
