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
    
    // MARK: - BODY
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Podcast_Previews: PreviewProvider {
    static var previews: some View {
        Podcast()
    }
}
