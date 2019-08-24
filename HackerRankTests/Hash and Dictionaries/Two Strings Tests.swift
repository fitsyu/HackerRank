//
//  Two Strings.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 24/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

import XCTest
@testable import HackerRank

class TwoStringsTests: XCTestCase {
    
    func test1() {
        
        // given
        let str1 = "hello"
        let str2 = "world"
        
        // when
        let haveSharedSubstring = twoStrings(s1: str1, s2: str2)
        
        // then
        XCTAssertEqual(haveSharedSubstring, "YES") // share 'o'
    }
    
    func test2() {
        
        // given
        let str1 = "hi"
        let str2 = "world"
        
        // when
        let haveSharedSubstring = twoStrings(s1: str1, s2: str2)
        
        // then
        XCTAssertEqual(haveSharedSubstring, "NO") // share nothing
    }
    
    func test3() {
        measure {
            test1()
        }
    }
}
