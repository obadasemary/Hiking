//
//  ContentView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    let hikes = Hike.all()
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetailView(hike: hike)) {
                    
                    HikeCell(hike: hike)
                }
            }
            .navigationBarTitle("Hikings")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
