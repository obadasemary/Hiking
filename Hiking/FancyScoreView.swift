//
//  FancyScoreView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct FancyScoreView: View {
    
    // MARK: - PROPERTIES
    
    @EnvironmentObject var userSettings: UserSettingsViewModel
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            
            Text("\(self.userSettings.score)")
            
            Button(action: {
                
                self.userSettings.score += 1
                
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
        FancyScoreView()
            .preferredColorScheme(.dark)
    }
}
