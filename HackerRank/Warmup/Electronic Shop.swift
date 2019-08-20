//
//  Electronic Shop.swift
//  HackerRank
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    
    var prices: [Int] = []
    for k in keyboards {
        for d in drives {
            prices.append(k+d)
        }
    }
    
    prices = prices.filter { $0 <= b }
    
    let bestprice = prices.max() ?? -1
    
    return bestprice
}
