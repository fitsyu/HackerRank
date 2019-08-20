//
//  Shock Merchant.swift
//  HackerRank
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//


func sockMerchant(n: Int, ar: [Int]) -> Int {
    
    var groups: [ [Int] ] = []
    
    Set(ar).forEach { i in
        groups.append( ar.filter { j in i == j } )
    }
    
    let count = groups.reduce(0) { (r: Int, a: [Int]) -> Int in
        let new = r + Int(a.count/2)
        return new
    }
    
    return count
}
