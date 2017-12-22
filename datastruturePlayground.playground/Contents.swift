//: Playground - noun: a place where people can play

import UIKit

/********* Find most common element in the array ************/
class fruitClass
{
    init() {
    }
    func mostCommonElement(fruitsArray:Array<Any>) -> Any {
        let fruitDic = NSMutableDictionary()
        for fruit in fruitsArray {
            if fruitDic[fruit] != nil {
                fruitDic[fruit] = fruitDic[fruit] as! Int + 1
                continue
            }
            fruitDic[fruit] = 1
        }
        print(fruitDic)
        var repeatedFruits = fruitsArray[0]
        var repeatedCount = fruitDic[fruitsArray[0]] as! Int
        for i in 1..<fruitsArray.count {
            if repeatedCount <  fruitDic[fruitsArray[i]] as! Int{
                repeatedFruits = fruitsArray[i]
                repeatedCount = fruitDic[fruitsArray[i]] as! Int

            }
        }
        return repeatedFruits
    }
}
var fruitInstance = fruitClass()
var FFF = "sarathkumar"

var fruitsArray = ["s","a","r","a","t","h","k","u","m","a","r"]
//var fruitsArray = [12,2,3,2,1,6,6,6]
print("reapetedelement: \(fruitInstance.mostCommonElement(fruitsArray: fruitsArray) )")



