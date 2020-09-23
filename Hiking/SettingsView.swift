//
//  SettingsView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @ObservedObject var userSettingsViewModel = UserSettingsViewModel()
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            
            Text("\(userSettingsViewModel.score)")
                .font(.largeTitle)
            
            Button(action: {
                userSettingsViewModel.score += 1
            }, label: {
                Text("Increment Score")
            })
            .font(.largeTitle)
            .foregroundColor(.pink)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
