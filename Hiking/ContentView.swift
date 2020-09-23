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
        List(self.hikes, id: \.name) { hike in
            HikeCell(hike: hike)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
