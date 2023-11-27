import UIKit

func elemanBul(dizi: [Int], aranan: Int) -> Int {
    for (index, eleman) in dizi.enumerated() {
        if eleman == aranan {
            print("\(aranan) dizide \(index + 1). indekste bulundu.")
            return index + 1
        } else if eleman > aranan {
            print("\(aranan) dizide bulunmuyor. Eklenince olması gereken indeks: \(index + 1)")
            return index + 1
        }
    }

    print("\(aranan) dizide bulunmuyor. Eklenince olması gereken indeks: \(dizi.count + 1)")
    return dizi.count + 1
}

// Örnek kullanım:
let dizi1 = [1, 3, 5, 6]
let aranan1 = 5
let sonuc1 = elemanBul(dizi: dizi1, aranan: aranan1)

let dizi2 = [1, 3, 5, 6]
let aranan2 = 2
let sonuc2 = elemanBul(dizi: dizi2, aranan: aranan2)

let dizi3 = [1, 3, 5, 6]
let aranan3 = 7
let sonuc3 = elemanBul(dizi: dizi3, aranan: aranan3)
