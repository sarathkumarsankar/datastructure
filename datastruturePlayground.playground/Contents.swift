//: Playground - noun: a place where people can play

import UIKit

/********* Find most common element in the array ************/
class fruitClass
{
    init() {
    }
    func mostCommonElement(fruitsArray:Array<Any>) -> String {
        let fruitDic = NSMutableDictionary()
        print(fruitsArray)
        for fruit in fruitsArray {
            if fruitDic[fruit] != nil {
                fruitDic[fruit] = fruitDic[fruit] as! Int + 1
                continue
            }
            fruitDic[fruit] = 1
        }
        print(fruitDic)
        var repeatedFruits = fruitsArray[0]
        let repeatedCount = fruitDic[fruitsArray[0]] as! Int
        for i in 1..<fruitsArray.count {
            if repeatedCount <  fruitDic[fruitsArray[i]] as! Int{
                repeatedFruits = fruitsArray[i]
            }
        }
        return repeatedFruits as! String
    }
}
var fruitInstance = fruitClass()
var fruitsArray = ["apple","orange","mango","apple2","apple","orange"]
print("reapetedelement: \(fruitInstance.mostCommonElement(fruitsArray: fruitsArray))")



