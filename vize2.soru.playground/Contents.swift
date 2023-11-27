import UIKit

var dizi = [0,0,1,1,1,2,2,3,3,4]

dizi.sort()

var temizlenmisDizi = [String]()
var set = Set<Int>()

for eleman in dizi {
    if set.contains(eleman) {
        temizlenmisDizi.append("_")
    } else {
        temizlenmisDizi.append(String(eleman))
        set.insert(eleman)
    }
}
temizlenmisDizi = temizlenmisDizi.filter { $0 != "_" } + temizlenmisDizi.filter { $0 == "_"}

// Sonucu yazdır
print("Temizlenmiş ve Sıralanmış Dizi: \(temizlenmisDizi)")
