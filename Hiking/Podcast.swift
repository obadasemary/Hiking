//
//  Podcast.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct Podcast: View {
    
    // MARK: - PROPERTIES
    
    let episode = Episode(name: "Macbreak Weekly", track: "WWDC 2019")
    
    @State private var isPlaying = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
            
            Text(self.episode.track)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
            
        }
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }
        .padding(12)
    }
}

struct Podcast_Previews: PreviewProvider {
    static var previews: some View {
        Podcast()
    }
}
