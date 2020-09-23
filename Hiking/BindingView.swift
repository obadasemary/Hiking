//
//  BindingView.swift
//  Hiking
//
//  Created by Abdelrahman Mohamed on 23.09.2020.
//

import SwiftUI

struct BindingView: View {
    
    // MARK: - PROPERTIES
    
    @State var name: String = ""
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Text(name)
            TextField("Enter name", text: $name)
            
//            Button(action: printName) {
//                Text("Show Name Value")
//            }
            Spacer()
        }
        .padding()
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
