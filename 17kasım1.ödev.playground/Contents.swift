import UIKit

func mergeAndFindMedian(_ array1: [Int], _ array2: [Int]) -> Double? {
    var mergedArray = [Int]()


    var index1 = 0
    var index2 = 0

    while index1 < array1.count || index2 < array2.count {
        if index2 == array2.count || (index1 < array1.count && array1[index1] <= array2[index2]) {
            mergedArray.append(array1[index1])
            index1 += 1
        } else {
            mergedArray.append(array2[index2])
            index2 += 1
        }
    }

    let count = mergedArray.count

    if count % 2 == 0 {
     
        let middle1 = mergedArray[count / 2 - 1]
        let middle2 = mergedArray[count / 2]
        return Double(middle1 + middle2) / 2.0
    } else {
        return Double(mergedArray[count / 2])
    }
}



let array3 = [1, 2]
let array4 = [3, 4]
if let median = mergeAndFindMedian(array3, array4) {
    print("Birleştirilmiş Dizi: \(array3 + array4)")
    print("Medyan: \(median)")
} else {
    print("Diziler boş!")
}
