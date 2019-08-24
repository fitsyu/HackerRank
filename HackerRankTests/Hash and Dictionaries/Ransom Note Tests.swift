//
//  Ransom Note Tests.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 24/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

import XCTest
@testable import HackerRank

class RansomNoteTests: XCTestCase {
    
    func test1() {
        
        // given
        let magazineWords = "give me one grand today night".split(separator: " ").map { String($0) }
        let ransomNote = "give one grand today".split(separator: " ").map { String($0) }
        
        // when
        let possible = checkMagazine(magazine: magazineWords, note: ransomNote)
        
        // then
        XCTAssertEqual(possible, "YES")
    }
    
    func test2() {
        
        // given
        let magazineWords = "two times three is not four".split(separator: " ").map { String($0) }
        let ransomNote = "two times two is four".split(separator: " ").map { String($0) }
        
        // when
        let possible = checkMagazine(magazine: magazineWords, note: ransomNote)
        
        // then
        XCTAssertEqual(possible, "NO")
    }
    
    func test3() {
        
        // given
        let magazineWords = "ive got a lovely bunch of coconuts".split(separator: " ").map { String($0) }
        let ransomNote = "ive got some coconuts".split(separator: " ").map { String($0) }
        
        // when
        let possible = checkMagazine(magazine: magazineWords, note: ransomNote)
        
        // then
        XCTAssertEqual(possible, "NO")
    }
}
