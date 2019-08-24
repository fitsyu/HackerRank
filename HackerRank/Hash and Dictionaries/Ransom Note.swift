//
//  Ransom Note.swift
//  HackerRank
//
//  Created by Fitsyu  on 24/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func checkMagazine(magazine: [String], note: [String]) -> String {
    
    let filtered = magazine.filter { note.contains($0) }
    let answer = filtered.count == note.count ? "YES" : "NO"
    
    return answer
}
