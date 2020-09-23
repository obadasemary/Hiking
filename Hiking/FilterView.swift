//
//  FilterView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct FilterView: View {
    
    // MARK: - PROPERTIES
    
    var dishs = Dish.all()
    
    @State private var isSpicy: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            List {
                
                Toggle(isOn: $isSpicy) {
                    Image("spicy-icon")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                }
                
                ForEach(dishs) { dish in
                    HStack {
                        
                        Image(dish.imageURL)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(20)
                        
                        VStack {
                            Text(dish.name)
//                                .fontWeight(.heavy)
                                .font(.title)
                            
                            Text("\(dish.price)")
//                                .fontWeight(.thin)
                                .font(.footnote)
                        }
                        
                        Spacer()
                        
                        if dish.isSpicy {
                            Image("spicy-icon")
                                .resizable()
                                .frame(width: 35, height: 35, alignment: .trailing)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Filter")
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
