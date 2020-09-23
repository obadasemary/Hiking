//
//  FancyScoreView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct FancyScoreView: View {
    
    // MARK: - PROPERTIES
    
    @Binding var score: Int
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            
            Text("\(self.score)")
            
            Button(action: {
                
                self.score += 1
                
            }, label: {
                Text("Increment Score")
            })
            .padding()
            .background(Color.pink)
        }
        .padding()
        .background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView(score: .constant(0))
    }
}
