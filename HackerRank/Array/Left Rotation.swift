//
//  Left Rotation.swift
//  HackerRank
//
//  Created by Fitsyu  on 22/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func rotLeft(a: [Int], d: Int) -> [Int] {
    
    // this is the power of math to eliminate unnecessary loop
    let loopCount = d % a.count
    
    var array = a
    
    for _ in 0..<loopCount {
        let item = array.removeFirst()
        array.append(item)
    }
    
    return array
}
