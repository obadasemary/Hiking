//
//  MainView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Hikings")
                }
            
            AnimalsView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Animals")
                }
            
            DishsView()
                .tabItem {
                    Image(systemName: "location")
                    Text("Dishs")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
