//
//  HikeCell.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct HikeCell: View {
    
    // MARK: - PROPERTIES
    
    let hike: Hike
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            
            Image(hike.imageUrl)
                .resizable()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                
                Text(String(format: "%.2f", hike.miles))
                    .fontWeight(.light)
                    .font(.footnote)
            }
        }
    }
}

struct HikeCell_Previews: PreviewProvider {
    static var previews: some View {
        HikeCell(hike: Hike(name: "Nazli", imageUrl: "snow3", miles: 5.0))
    }
}
