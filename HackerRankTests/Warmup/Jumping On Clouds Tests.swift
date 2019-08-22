//
//  Jumping On Clouds Tests.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

import XCTest
@testable import HackerRank

class JumpingOnCloudsTests: XCTestCase {
    
    func test1() {
        
        // given
        let clouds = [0, 0, 1, 0, 0, 1, 0]
        
        // when
        let jumpCount = jumpingOnClouds(c: clouds)
        
        // then
        XCTAssertEqual(jumpCount, 4)
    }
    
    func test2() {
        
        // given
        let clouds = [0, 0, 0, 1, 0, 0]
        
        // when
        let jumpCount = jumpingOnClouds(c: clouds)
        
        // then
        XCTAssertEqual(jumpCount, 3)
    }
}

