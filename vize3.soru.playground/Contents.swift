import UIKit

var dizi = [1, 2, 3, 4, 5, 6]

dizi.sort()

let eklenensayi = 9

if let index = dizi.firstIndex(of: eklenensayi) {
    print("Eklenen sayi \(eklenensayi) dizinin \(index). indisinde bulunuyor.")
} else {
    // Sayı bulunamazsa diziyi güncelle ve hangi indexte olduğunu yazdır
    dizi.append(eklenensayi)
    let index = dizi.firstIndex(of: eklenensayi)!
    print("Eklenen sayi \(eklenensayi) dizide yok, eklenen sayı dizinin \(index). indisine eklendi.")
}
if dizi != [1, 2, 3, 4, 5, 6] {

    print("Güncellenmiş Dizi: \(dizi)")
}

