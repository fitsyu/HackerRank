//
//  Hour Glass 2D Tests.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 22/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//


import XCTest
@testable import HackerRank

class HourGlass2DTests: XCTestCase {
    
    func test1() {
        
        // given
        let matrix = [
            [1, 1, 1, 0, 0, 0],
            [0, 1, 0, 0, 0, 0],
            [1, 1, 1, 0, 0, 0],
            [0, 0, 2, 4, 4, 0],
            [0, 0, 0, 2, 0, 0],
            [0, 0, 1, 2, 4, 0],
        ]
        
        // when
        let maxHourGlassSum = hourglassSum(arr: matrix)
        
        // then
        XCTAssertEqual(maxHourGlassSum, 19)
    }
    
}
