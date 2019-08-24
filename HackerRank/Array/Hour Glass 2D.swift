//
//  Hour Glass 2D.swift
//  HackerRank
//
//  Created by Fitsyu  on 22/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func hourglassSum(arr matrix: [[Int]]) -> Int {
    
    let size = 3
    let rowCount  = 6
    let colCount  = 6
    let rowLoopCount = rowCount - size + 1
    let colLoopCount = colCount - size + 1
    
    var sums: [Int] = []
    for r in 0..<rowLoopCount {
        for c in 0..<colLoopCount {
            
            // collect the numbers in 3x3
            var ints: [Int] = []
            for i in 0..<size {
                for j in 0..<size {
                    ints.append(matrix[r+i][c+j])
                }
            }
            
            // make the hour glass by removing (3) 4 (5)
            // remove 3th an 5th
            ints.remove(at: 3)
            ints.remove(at: 4) // it was 5th but after removing the 4th above it changes
            
            // calculate the sums and collect
            let sum = ints.reduce(0) { $0 + $1 }
            sums.append(sum)
        }
    }
    
    var maxSum = 0
    if let ms = sums.max() {
        maxSum = ms
    }
    return maxSum
}
