

import Foundation
import SwiftUI

struct Dish: Identifiable {
    
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
    let isSpicy: Bool
}

extension Dish {
    
    static func all() -> [Dish] {
        
        return [
            Dish(name: "Filet Mignon", price: 35, imageURL: "kungpow", isSpicy: true),
            Dish(name: "Spagetti Meatballs", price: 12, imageURL: "spicy", isSpicy: false),
            Dish(name: "Spagetti Meatballs", price: 12, imageURL: "sweet", isSpicy: true),
            Dish(name: "Sushi", price: 15, imageURL: "b1", isSpicy: true),
            Dish(name: "Chocolate Cake", price: 8, imageURL: "d1", isSpicy: false),
            Dish(name: "Lemon Cake", price: 10, imageURL: "d2", isSpicy: false),
            Dish(name: "Spagetti Meatballs", price: 12, imageURL: "e2", isSpicy: true)
        ]
    }
}
