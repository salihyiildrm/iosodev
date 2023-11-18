import UIKit

func removeCharacters(from inputString: String, repeatCount: Int) -> String {
    var characterCount = [Character: Int]()

    for char in inputString {
        characterCount[char, default: 0] += 1
    }

    var resultString = ""
    for char in inputString {
        if let count = characterCount[char], count < repeatCount {
            resultString.append(char)
        }
    }

    return resultString
}

let inputString = "aaba kouq bux"
let repeatCount = 3
let result = removeCharacters(from: inputString, repeatCount: repeatCount)

print(result)
