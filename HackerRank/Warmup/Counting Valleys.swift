//
//  Counting Valleys.swift
//  HackerRank
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func countingValleys(n: Int, s: String) -> Int {
    
    var value = 0
    var valleysCount = 0
    
    for i in s {
        
        let oldValue = value
        
        if i == "U" {
            value += 1
        } else {
            value -= 1
        }
        
        // valley is incremented whenever value is 0 previous value is less then 0  => /-
        if value == 0 && oldValue < 0 {
            valleysCount += 1
        }
    }
    
    return valleysCount
}
