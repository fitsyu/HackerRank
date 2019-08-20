//
//  Shock Merchant.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

import XCTest
@testable import HackerRank

class CountingValleyTests: XCTestCase {
    
    func test1() {
        
        // given
        let path = "UDDDUDUU"
        
        // when
        let valleyCount = countingValleys(n: 7, s: path)
        
        // then
        XCTAssertEqual(valleyCount, 1)
    }
    
    func test2() {
        
        // given
        let path = "DDUUDDUDUUUD"
        
        // when
        let valleyCount = countingValleys(n: 12, s: path)
        
        // then
        XCTAssertEqual(valleyCount, 2)
    }
}

