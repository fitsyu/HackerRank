//
//  Shock Merchant.swift
//  HackerRankTests
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

import XCTest
@testable import HackerRank

class SockMerchantTests: XCTestCase {
    
    func testCountPairs() {
        
        // given
        let array = [10, 20, 20, 10, 10, 30, 50, 10, 20]
        
        // when
        let pairsCount = sockMerchant(n: 9, ar: array)
        
        // then
        XCTAssertEqual(pairsCount, 3)
    }
}
