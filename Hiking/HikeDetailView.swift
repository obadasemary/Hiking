//
//  HikeDetailView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct HikeDetailView: View {
    
    // MARK: - PROPERTIES
    
    let hike: Hike
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            Image(hike.imageUrl)
                .resizable()
//                .frame(width: 400, height: 400, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding()
            
            HStack {
                
                Text(hike.name)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                
                Text(String(format: "%.2f", hike.miles))
                    .fontWeight(.medium)
                    .font(.title3)
            }
            
            Spacer()
        }
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: Hike(name: "Obada", imageUrl: "snow1", miles: 6))
    }
}
