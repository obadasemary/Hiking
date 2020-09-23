//
//  Hike.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import Foundation

struct Hike {
    
    let name: String
    let imageUrl: String
    let miles: Double
}

extension Hike {
    
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Obada", imageUrl: "snow1", miles: 6),
            Hike(name: "Sara", imageUrl: "snow2", miles: 5.8),
            Hike(name: "Nazli", imageUrl: "snow3", miles: 5)
        ]
    }
}
