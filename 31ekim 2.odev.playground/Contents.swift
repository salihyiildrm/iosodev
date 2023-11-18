import UIKit

let metin = "Merhaba nasılsınız iyiyim siz nasılsınız bende iyiyim"

var kelimeSayilari: [String: Int] = [:]// sozluk adı kelime sayilari , türü int, [:] sözlüğü boş bir şekilde başlatır.

let kelimeler = metin.components(separatedBy: " ")
for kelime in kelimeler {
    if let sayi = kelimeSayilari[kelime] {
        kelimeSayilari[kelime] = sayi + 1
    } else {
        kelimeSayilari[kelime] = 1
    }
}

for (kelime, sayi) in kelimeSayilari {
    print("\(kelime): \(sayi) kere")
}
