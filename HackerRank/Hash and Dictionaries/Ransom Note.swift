//
//  Ransom Note.swift
//  HackerRank
//
//  Created by Fitsyu  on 24/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func checkMagazine(magazine: [String], note: [String]) -> String {
    
    
    
    var magaze = magazine
    
    for word in note {
        
        if let idx = magaze.firstIndex(of: word) {
            
            // remove this word from magazine
            magaze.remove(at: idx)
            
        } else {
            
            // early exit anytime a word does not exist in magazine
            return "No"
        }
    }
    
    return "Yes"
}
