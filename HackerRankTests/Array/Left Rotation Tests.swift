//
//  Left Rotation Tests.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 22/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//


import XCTest
@testable import HackerRank

class LeftRotationTests: XCTestCase {
    
    func test1() {
        
        // given
        let array = [1, 2, 3, 4, 5]
        let rotationCount = 4
        
        // when
        let rotated = rotLeft(a: array, d: rotationCount)
        
        // then
        XCTAssertEqual(rotated, [5, 1, 2, 3, 4])
    }
    
    func testItRunFast() {
        
        // given
        let array = [1, 2, 3, 4, 5, 6]
        let rotationCount = 601
        
        // when
        let rotated = rotLeft(a: array, d: rotationCount)
        
        // then
        XCTAssertEqual(rotated, [2, 3, 4, 5, 6, 1])
    }
}
