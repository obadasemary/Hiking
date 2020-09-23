//
//  DishsView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct DishsView: View {
    let dishes = Dish.all()
    
    var body: some View {
        
        let chunkedDishes = dishes.chunked(into: 2)
        NavigationView {
            
            return List {
                
                // rows
                ForEach(0..<chunkedDishes.count) { index in
                    
                    HStack {
                        
                        ForEach(chunkedDishes[index]) { dish in
                            
                            Image(dish.imageURL)
                                .resizable()
                                // .frame(width: 150, height: 150)
                                .scaledToFit()
                            
                        }
                    }
                }
            }
            .navigationBarTitle("Dishs")
        }
    }
}

struct DishsView_Previews: PreviewProvider {
    static var previews: some View {
        DishsView()
    }
}
