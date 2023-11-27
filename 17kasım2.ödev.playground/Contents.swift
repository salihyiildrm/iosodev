import UIKit

func modifyArray(_ array: [Int]) -> [Any] {
    var sortedArray = array.sorted()

    var uniqueArray = [Int]()
    for value in sortedArray {
        if uniqueArray.isEmpty || value != uniqueArray.last {
            uniqueArray.append(value)
        }
    }

    let missingCount = array.count - uniqueArray.count
    for _ in 0..<missingCount {
        uniqueArray.append(-1)
    }

    return uniqueArray.map { $0 == -1 ? "_" : $0 as Any }
}

let array1 = [1, 1, 2]
let modifiedArray1 = modifyArray(array1)
print("Düzenlenmiş Dizi: \(modifiedArray1)")

let array2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
let modifiedArray2 = modifyArray(array2)
print("Düzenlenmiş Dizi: \(modifiedArray2)")
