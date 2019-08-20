//
//  Jumping On Clouds.swift
//  HackerRank
//
//  Created by Fitsyu  on 20/08/19.
//  Copyright © 2019 Fitsyu . All rights reserved.
//

func jumpingOnClouds(c clouds: [Int]) -> Int {
    
    // some necessary preparation variables
    var jumpCount = 0
    let theClouds = clouds.enumerated()
    
    // some prerequites checks
    guard var currentCloud = theClouds.first(where: { $0.offset == 0 }) else { return 0 }
    guard let lastCloud = theClouds.first(where: { $0.offset == clouds.count-1 }) else { return 0 }
    
    // a helping jump function
    func tryJump(count: Int) -> (offset: Int, element: Int)? {
        
        var nextCloud: (offset: Int, element: Int)? = nil
        nextCloud = theClouds.first(where: { $0.offset == currentCloud.offset + count })
        if let nextCloud = nextCloud, nextCloud.element == 0 {
            return nextCloud
        }
        return nil
    }
    
    // start jumping
    repeat {
        
        // is able to jump from
        guard currentCloud.element == 0 else { continue }
        
        if let nextCloud = tryJump(count: 2) {
            currentCloud = nextCloud
            jumpCount += 1
            continue
        }
        
        if let nextCloud = tryJump(count: 1) {
            currentCloud = nextCloud
            jumpCount += 1
            continue
        }
        
    } while currentCloud != lastCloud
    
    return jumpCount
}
