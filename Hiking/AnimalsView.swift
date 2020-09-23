//
//  AnimalsView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct AnimalsView: View {
    
    // MARK: - PROPERTIES
    
    let animals = ["🐈","🐆","🦌","🦒","🦏","🐄","🐀","🦩","🦜"]
    @State private var sliderValue: CGFloat = 1
    
    let imageURL = "https://m.media-amazon.com/images/M/MV5BZmUwNGU2ZmItMmRiNC00MjhlLTg5YWUtODMyNzkxODYzMmZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg"
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            
            VStack {
            
                Slider(value: $sliderValue, in: 1...8, step: 1)
                Text(String(format: "%.0f", self.sliderValue))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
            
            
                List(animals.chunks(size: Int(self.sliderValue)), id: \.self) { chunk in
                    ForEach(chunk, id: \.self) { animal in

//                        Text(animal)
//                            .font(.system(size: CGFloat(300 / self.sliderValue)))
                        
                        HStack {
                            Spacer()
         
                            URLImage(url: self.imageURL)
                                .frame(width: 300/self.sliderValue, height: 400/self.sliderValue)
                                .cornerRadius(10.0)
                                .shadow(color: Color.white, radius: 6.0, x: -8, y: -8)
                                .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), radius: 6.0, x: 8, y: 8)
                            
                            Spacer()
                        }
                    }
                }
            }
            .navigationBarTitle("Animals")
        }
    }
}

struct AnimalsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsView()
    }
}
