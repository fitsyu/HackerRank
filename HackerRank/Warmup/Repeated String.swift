//
//  Repeated String.swift
//  HackerRank
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func repeatedString(s str: String, n limit: Int) -> Int {
    
    //    if Set(str).count == 1 && str.contains("a") { return limit }
    //
    //    var theString = ""
    //    repeat {
    //        theString += String(repeating: str, count: 1)
    //    } while theString.count < limit
    //
    //    let excessCount = theString.count - limit
    //    theString = String(theString.dropLast(excessCount))
    //
    //    return theString.filter { $0 == "a" }.count
    
    
    
    var c1 = 0
    var c2 = 0
    
    // count c1
    for i in 0..<str.count {
        
        let char = str[str.index(str.startIndex, offsetBy: i)]
        
        if char == "a" {
            c1 += 1
        }
    }
    
    // count c2
    for i in 0..<limit%str.count {
        
        let char = str[str.index(str.startIndex, offsetBy: i)]
        
        if char == "a" {
            c2 += 1
        }
    }
    
    return (limit/str.count) * c1 + c2
}
