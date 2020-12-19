//
//  main.swift
//  SwiftLesson2
//
//  Created by Ниязов Ринат Раимжанович on 12/19/20.
//

import Foundation

func isEvenNumber(value: Int) {
    if value % 2 == 0 {
        print("Число четное")
    } else {
        print("Число нечетное")
    }
}

func isNumberDivisible(value: Int) {
    if value % 3 == 0 {
        print("Данное число делится на 3 без остатка")
    } else {
        print("Данное число не делится на 3 без остатка")
    }
}

func generateList() -> [Int] {
    var tempArray: [Int] = []
    for i in 1...100 {
        tempArray.append(i)
    }
    
    return tempArray
}

func deleteValuesFromArray(array:[Int]) -> [Int] {
    var outputArray: [Int] = []
    for index in 0..<array.count {
        if array[index] % 2 != 0 || array[index] % 3 == 0 {
            outputArray.append(array[index])
        }
    }
    
    return outputArray
}

func fibonachiRecurs(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    } else {
        return fibonachiRecurs(n - 1) + fibonachiRecurs(n - 2)
    }
}

func fibonachi() -> [Double] {
    
    var stepOne: Double = 0
    var stepTwo: Double = 1
    var outputArray: [Double] = []
    
    for _ in 0..<100 {
        //fibonachiRecurs(i)
        let temp = stepOne
        stepOne = stepTwo
        outputArray.append(stepOne)
        
        stepTwo += temp
    }
    
    return outputArray
}

func methodEratosthenes(_ valuesCount: Int) -> [Int] {
    
    var outputArray = [Int](2...100)
    
    //repeat {
    var p = 2
    //outputArray.append(<#T##newElement: Int##Int#>)
    
    while p != 0 {
        for i in 2...valuesCount {
            if let index = outputArray.firstIndex(of: (i * p)) {
                outputArray.remove(at: index)
            }
        }
        
        if let index = outputArray.firstIndex(of: p), index != (outputArray.endIndex - 1) {
            p = outputArray[index + 1]
        } else {
            p = 0
        }
    }
    //} while outputArray.count != valuesCount
        
    
    return outputArray
}

//Task 1
isEvenNumber(value: 10)

//Task 2
isNumberDivisible(value: 10)

//Task 3
var array = generateList()
print(array)

//Task 4
var changedArray = deleteValuesFromArray(array: array)
print(changedArray)

//Task 5 without recursion
var fibonachiArray: [Double] = fibonachi()
print(fibonachiArray)

//Task 6
var simpleValues: [Int] = methodEratosthenes(100)
print(simpleValues)

