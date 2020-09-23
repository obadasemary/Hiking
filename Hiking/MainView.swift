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
            
            FilterView()
                .tabItem {
                    Image(systemName: "line.horizontal.3.decrease.circle")
                    Text("Filter")
                }
            
            BindingView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Binding")
                }
            
            PodcastView()
                .tabItem {
                    Image(systemName: "homepod")
                    Text("Podcast")
                }
            
            FancyTimerView()
                .tabItem {
                    Image(systemName: "timer")
                    Text("FancyTimer")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
