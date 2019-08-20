//
//  Electronic Shop Tests.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

import XCTest
@testable import HackerRank

class ElectronicShopTests: XCTestCase {
    
    func testPossiblePurchase() {
        
        // given
        let keyboards = [3, 1]
        let usbDrives = [5, 2, 8]
        
        let budget = 10
        
        // when
        let spent = getMoneySpent(keyboards: keyboards, drives: usbDrives, b: budget)
        
        // then
        XCTAssertEqual(spent, 9)
    }
    
    func testImpossiblePurchase() {
        
        // given
        let keyboards = [4]
        let usbDrives = [5]
        
        let budget = 5
        
        // when
        let spent = getMoneySpent(keyboards: keyboards, drives: usbDrives, b: budget)
        
        // then
        XCTAssertEqual(spent, -1)
    }
}
