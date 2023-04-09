//
//  ContentView.swift
//  Animations
//
//  Created by Shah Md Imran Hossain on 8/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundColor(.white)
        .animation(.default, value: enabled)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 5)) // clipshape will not animating in this position
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
