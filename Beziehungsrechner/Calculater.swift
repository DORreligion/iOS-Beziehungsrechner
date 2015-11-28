//
//  Calculater.swift
//  Beziehungsrechner
//
//  Created by Lukas Schramm on 30.10.15.
//  Copyright © 2015 Dabendorf. All rights reserved.
//

import Foundation

class Calculate {
    
    var names = [String]()
    var numbers = [Int]()
    var relationRate = Int()
    var length = Int()
    var temp = Int()
    var counter = Int()
    
    init(names:[String]) {
        self.names = names
        sort()
        calc()
    }
    
    func sort() {
        names = names.sort()
        let nameStr = (names[0] + names[1]).uppercaseString
        let chars = Array(nameStr.characters)
        counter = 0
        for a in chars {
            for b in chars {
                if(a==b) {
                    counter++
                }
            }
            numbers.append(counter)
            counter = 0
        }
    }
    
    func calc() {
        var numbersStatic = [Int]()
        var digits = [Int]()
        for number in numbers {
            numbersStatic.append(number)
        }
        length = numbersStatic.count
        temp = length-1
        numbers.removeAll()
        
        for var i=0;i<(length/2);i++ {
            counter = numbersStatic[i] + numbersStatic[temp]
            if counter > 9 {
                while counter > 0 {
                    digits.insert(counter%10, atIndex: 0)
                    counter/=10
                }
                numbers.append(digits[0])
                numbers.append(digits[1])
            } else {
                numbers.append(counter)
            }
            temp--;
        }
        
        if length%2 != 0 {
            numbers.append(numbersStatic[length/2])
        }
        if numbers.count > 2 && !(numbers.count==3 && numbers[0]==1 && numbers[1]==0 && numbers[2]==0) {
            calc()
        } else {
            var str = ""
            for number in numbers {
                str += "\(number)"
            }
            relationRate = Int(str)!
        }
    }

    func getRelationRate() -> Int {
        return relationRate
    }
}