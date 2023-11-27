import UIKit

let dizi1=[1,2,3,4,5]
let  dizi2=[6,7,8,9]

let birleştirilmişdizi = dizi1 + dizi2

let toplam = birleştirilmişdizi.reduce(0, +)
let medyan = Double(toplam) / Double(birleştirilmişdizi.count)

print("medyan: \( medyan)")


