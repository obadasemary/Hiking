//
//  FancyTimerView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct FancyTimerView: View {
    
    // MARK: - PROPERTIES
    
    @ObservedObject var fancyTimer = FancyTimer()
    
    // MARK: - BODY
    
    var body: some View {
        Text("\(fancyTimer.value)")
            .font(.largeTitle)
    }
}

struct FancyTimerView_Previews: PreviewProvider {
    static var previews: some View {
        FancyTimerView()
            .preferredColorScheme(.dark)
    }
}
