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

func fibonachi(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    } else {
        return fibonachi(n - 1) + fibonachi(n - 2)
    }
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

//Task 5
var fibonachiArray: [Int] = []
print(fibonachiArray)


