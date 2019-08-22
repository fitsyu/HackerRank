//
//  Repeated String Tests.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//


import XCTest
@testable import HackerRank

class RepeatedStringTests: XCTestCase {
    
    func test1() {
        
        // given
        let string      = "a"
        let repeatCount = 1000000000000
        
        // when
        let repeatedStringCount = repeatedString(s: string, n: repeatCount)
        
        // then
        XCTAssertEqual(repeatedStringCount, 1000000000000)
    }
    
    func test2() {
        
        // given
        let string      = "aab"
        let repeatCount = 882787
        
        // when
        let repeatedStringCount = repeatedString(s: string, n: repeatCount)
        
        // then
        XCTAssertEqual(repeatedStringCount, 588525)
    }
    
    
}

