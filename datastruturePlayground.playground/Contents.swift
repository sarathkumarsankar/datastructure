//: Playground - noun: a place where people can play

import UIKit

/********* Find most common element in the array start ************/
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

/********* Find most common element in the array end************/

/******** K’th Smallest/Largest Element in Unsorted Array start*********/

class fruitClass1
{
    func mergeSort(unsortedArray:Array<Int>) -> Array<Any> {
        guard unsortedArray.count > 1 else {
            return unsortedArray
        }
        let midpoint = unsortedArray.count / 2
        let leftArray = unsortedArray[0..<midpoint]
        let rightArray = unsortedArray[midpoint..<unsortedArray.count]
        print(leftArray)
        print(rightArray)
        return merge( leftArray1: mergeSort(unsortedArray:Array(leftArray)) as! Array<Int>, rightArray1: mergeSort(unsortedArray:Array(rightArray)) as! Array<Int>)
    }
    
    func merge(leftArray1:Array<Int>,rightArray1:Array<Int>) -> Array<Any> {
        var leftArray2 = leftArray1
        var rightArray2 = rightArray1
        var mergedArray = [Int]()
        
        while leftArray2.count > 0 && rightArray2.count > 0 {
            if leftArray2[0] > rightArray2[0] {
                mergedArray.append(rightArray2[0])
                rightArray2.remove(at: 0)
            } else {
                mergedArray.append(leftArray2[0])
                leftArray2.remove(at: 0)
            }
        }
        return mergedArray+leftArray2+rightArray2
    }
}
var unsortArray = [12,15,3,2,1,6,8,3]
 var n = 5
var myInstance = fruitClass1()
var sortedArray = myInstance.mergeSort(unsortedArray: unsortArray)
print("sortedArray:\(sortedArray)")
print("\(n)th smallest element is \(sortedArray[n-1])")

/******** K’th Smallest/Largest Element in Unsorted Array end*********/
