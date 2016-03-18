//: Playground - noun: a place where people can play

import UIKit

let anyString = "this is a string"
//Swift会推断该常量为 String 类型


var emptyString = ""
var anotherEmptyString = String()

//API

if emptyString.isEmpty {
    print("nothing")
}

//变量字符串可被修改
var variableString = "Horse"
variableString += "adn carriage"

//常量字符串不可被修改
let constantString = "Highlander"
//contstantString += "and another Highlander"//出现错误

for character in "Dog!狗🐶".characters {
    print(character)
}

let catCharacters: [Character] = ["c","a","t","!","😄"]
//we can do this by this way to create a String type
let catString = String(catCharacters)



//operate String or Charater

//Concatenateing 连接

let string1 = "hello"
let string2 = " Swift"

//we use "+" to concatenate the strings
var welcome = string1 + string2

//also we can use "+="
var instruction = "look over"
instruction += string2

//if you want to add a character type value in the String Value tail
let exclamationMark: Character = "!"
welcome.append(exclamationMark)


//String Interpolation

//we use "\()" to insert a value to a string
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)


//Counting Characters

//the type of String has a property named "characters" which has a property named "count",we use it to count a string

let word = "iBokan Wisdom"
print("the no of characters in \(word) is \(word.characters.count)")


//Accessing and Modifying

let compamyName = "iBokan Wisdom"

//we use string Indices(字符串索引) to access the string

let startCharacter = compamyName[compamyName.startIndex]

let endCharacter = compamyName[compamyName.endIndex.predecessor()]

let middleCharacter = compamyName[compamyName.startIndex.advancedBy(3)]

// the number 3 must < compamyName.endIndex.predecessor() which is that the length of string

//these will occured some error

//compamyName[compamyName.endIndex]
//compamyName[compamyName.endIndex.successor()]

// traverse the String to access the each characater 遍历字符串中每个字符
for index in compamyName.characters.indices {
    print("\(compamyName[index])")
}

// inserting

var welcome_value = "Hello , iBokan Wisdom"
welcome_value.insert("!", atIndex: welcome_value.endIndex)

welcome_value.insertContentsOf(" it‘s here".characters, at: welcome_value.endIndex.predecessor())


welcome_value.insertContentsOf(" Vincent".characters, at: welcome_value.startIndex.advancedBy(5))


//removing
welcome_value.removeAtIndex(welcome_value.startIndex)
print(welcome_value)

//create range
let theRange = Range(start: welcome_value.endIndex.advancedBy(-6), end: welcome_value.endIndex)
//also
let range = welcome_value.endIndex.advancedBy(-6)..<welcome_value.endIndex

welcome_value.removeRange(range)


//Comparing

let cmpString1 = "my name is Vincent"
let cmpString2 = "my name is Vincent"
if cmpString1 == cmpString2 {
    print("these two strings are considered equal")
}


if cmpString1.hasPrefix("my") {
    print("this string has the subString")
}

if cmpString2.hasSuffix("ent") {
    print("this string has the subString")
}





