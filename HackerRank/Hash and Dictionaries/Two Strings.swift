//
//  Two Strings.swift
//  HackerRank
//
//  Created by Fitsyu  on 24/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func twoStrings(s1: String, s2: String) -> String {
    
    let str1 = Set(s1)
    let str2 = Set(s2)
    let result = str1.filter { str2.contains($0) }.isEmpty && str2.filter { str1.contains($0) }.isEmpty
    return result ? "NO" : "YES"
}
